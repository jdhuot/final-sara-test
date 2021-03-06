import React from 'react';
import MatButton from './MatButton';
import MatAvatar from './MatAvatar';
import MatNotificationDot from './MatNotificationDot';


export default function Participant(props) {

  return (
    <div>
      <div>
        <MatAvatar name={props.name} city={props.city} avatar={props.avatar} />
      </div>
      <span></span>
      <div>
        {/* if participant is rendered on the message dashboard */}
        {props.status === 'message' &&
        <div>
          <MatButton variant="contained" color="primary" onClick={() => props.setState(prev => ({...prev, view: 'chatcard', currentChatRecipient: props.user_id, currentActivityId: props.activity_id, messageNotification: [] }))}>Open Chat</MatButton>
          {props.state.messageNotification.length > 0 && props.state.messageNotification[0].activity_id === props.activity_id &&
            <MatNotificationDot label={props.newMessages} notifications={props.notifications}>1</MatNotificationDot>}
        </div>
        }
        {/* if participant is being rendered in the accepted section of the activity card in the hosted view */}
        {props.status === 'accepted' &&
        <div>
          <MatButton variant="contained" color="primary" onClick={() => props.setState(prev => ({...prev, view: 'chatcard', currentChatRecipient: props.user_id, currentActivityId: props.activity_id, messageNotification: [] }))}>Open Chat</MatButton>
          <MatButton variant="contained" color="secondary" onClick={() => props.statusChangeFunction(props.user_id, props.activity_id, "null")}>Remove</MatButton>
        </div>
        }
         {/* if participant is being rendered in the pending section of the activity card in the hosted view */}
        {props.status === 'pending' &&
        <div>
          <MatButton variant="contained" color="primary" onClick={() => props.setState(prev => ({...prev, view: 'chatcard', currentChatRecipient: props.user_id, currentActivityId: props.activity_id, messageNotification: [] }))} >Open Chat</MatButton>
          <MatButton variant="contained" color="secondary" onClick={() => props.statusChangeFunction(props.user_id, props.activity_id, "accepted")}>Accept</MatButton>
          <MatButton variant="contained" color="secondary" onClick={() => props.cancelFunction(props.user_id, props.activity_id)}>Deny</MatButton>
        </div>
        } 
      </div>
    </div>
  )
}; 