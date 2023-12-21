#! /bin/bash

threshold=1000
while [ $threshold -gt 0 ];
do
   echo "$threshold"
   echo '[2023-12-20 18:53:18.746] [INFO ] [chatLogExecutor-2] [com.bokecc.cloud.hdlive.chat.entity.pojo.MsgStatisVisualBO.exit:77] [fe924490] [{"roomId":90000790,"accountId":38,"traceId":"fe924490","source":"chat-consumer","timeElapsedInMs":171257,"timestampInMs":1702983198746,"nodes":[{"key":"CHAT_LIVE_PERSISTENCE","value":3419260},{"key":"CHAT_REPLAY_PERSISTENCE","value":4442558},{"key":"DO_DIRTY_FILTER","value":3714620},{"key":"QUERY_ACCOUNT_ID","value":69317471},{"key":"QUERY_CHAT_AUDIT_SETTINGS","value":2207068},{"key":"QUERY_CHAT_CHARACTERS_LIMIT","value":1966881},{"key":"OTHERS","value":73049251},{"key":"QUERY_CHAT_CALLBACK","value":3961597},{"key":"QUERY_CHAT_NUMBER_BLOCKING","value":1473152},{"key":"REBROADCAST","value":6177836},{"key":"SEND_CHAT_MSG","value":1527361}]}] - msg-statis-visual-source' >> chat-consumer.log
   threshold=`expr $threshold - 1`
done