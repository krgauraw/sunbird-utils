CREATE TABLE IF NOT EXISTS sunbird.shadow_user(processId text,name text,email text,phone text,channel text,orgExtId text, userExtId text,userStatus int,claimStatus int,userId text,createdOn timestamp,updatedOn timestamp,claimedOn timestamp,PRIMARY KEY (channel,userExtId) );
CREATE INDEX inx_shausr_userextId ON sunbird.shadow_user(userExtId);
CREATE INDEX inx_shausr_orgextId ON sunbird.shadow_user(orgExtId);
CREATE INDEX inx_shausr_userstatus ON sunbird.shadow_user(userStatus);
CREATE INDEX inx_shausr_claimStatus ON sunbird.shadow_user(claimStatus);
CREATE INDEX inx_shausr_userId ON sunbird.shadow_user(userId);
CREATE INDEX inx_shausr_processId ON sunbird.shadow_user(processId);
ALTER TABLE sunbird.shadow_user ADD addedBy text;
ALTER TABLE sunbird.shadow_user ADD userids list<text>;