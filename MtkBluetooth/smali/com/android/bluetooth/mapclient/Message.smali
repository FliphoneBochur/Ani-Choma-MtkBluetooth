.class public Lcom/android/bluetooth/mapclient/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;,
        Lcom/android/bluetooth/mapclient/Message$Type;
    }
.end annotation


# instance fields
.field private final mAttachmentSize:I

.field private final mDateTime:Ljava/util/Date;

.field private final mHandle:Ljava/lang/String;

.field private final mPriority:Z

.field private final mProtected:Z

.field private final mRead:Z

.field private final mReceptionStatus:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

.field private final mRecipientAddressing:Ljava/lang/String;

.field private final mRecipientName:Ljava/lang/String;

.field private final mReplytoAddressing:Ljava/lang/String;

.field private final mSenderAddressing:Ljava/lang/String;

.field private final mSenderName:Ljava/lang/String;

.field private final mSent:Z

.field private final mSize:I

.field private final mSubject:Ljava/lang/String;

.field private final mText:Z

.field private final mType:Lcom/android/bluetooth/mapclient/Message$Type;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    const-string v0, "handle"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mHandle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    nop

    .line 84
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSubject:Ljava/lang/String;

    .line 85
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/android/bluetooth/mapclient/ObexTime;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/mapclient/ObexTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/ObexTime;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mDateTime:Ljava/util/Date;

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mDateTime:Ljava/util/Date;

    .line 94
    :goto_0
    const-string v0, "sender_name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSenderName:Ljava/lang/String;

    .line 96
    const-string v0, "sender_addressing"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSenderAddressing:Ljava/lang/String;

    .line 98
    const-string v0, "replyto_addressing"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mReplytoAddressing:Ljava/lang/String;

    .line 100
    const-string v0, "recipient_name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mRecipientName:Ljava/lang/String;

    .line 102
    const-string v0, "recipient_addressing"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mRecipientAddressing:Ljava/lang/String;

    .line 104
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/Message;->strToType(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Message$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mType:Lcom/android/bluetooth/mapclient/Message$Type;

    .line 107
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "size"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    move v1, v0

    .line 112
    :goto_1
    iput v1, p0, Lcom/android/bluetooth/mapclient/Message;->mSize:I

    .line 114
    const-string v1, "text"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/mapclient/Message;->yesnoToBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/mapclient/Message;->mText:Z

    .line 116
    const-string v1, "reception_status"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/mapclient/Message;->strToReceptionStatus(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/mapclient/Message;->mReceptionStatus:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    .line 119
    :try_start_2
    const-string v1, "attachment_size"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    goto :goto_2

    .line 120
    :catch_1
    move-exception v1

    .line 121
    nop

    .line 124
    :goto_2
    iput v0, p0, Lcom/android/bluetooth/mapclient/Message;->mAttachmentSize:I

    .line 126
    const-string v0, "priority"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/Message;->yesnoToBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mPriority:Z

    .line 128
    const-string v0, "read"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/Message;->yesnoToBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mRead:Z

    .line 130
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/mapclient/Message;->yesnoToBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSent:Z

    .line 132
    const-string v0, "protected"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/Message;->yesnoToBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/bluetooth/mapclient/Message;->mProtected:Z

    .line 133
    return-void

    .line 76
    :catch_2
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private strToReceptionStatus(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;
    .locals 1

    .line 156
    const-string v0, "complete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->COMPLETE:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-object p1

    .line 158
    :cond_0
    const-string v0, "fractioned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->FRACTIONED:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-object p1

    .line 160
    :cond_1
    const-string v0, "notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->NOTIFICATION:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-object p1

    .line 164
    :cond_2
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;->UNKNOWN:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-object p1
.end method

.method private strToType(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Message$Type;
    .locals 1

    .line 142
    const-string v0, "EMAIL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$Type;->EMAIL:Lcom/android/bluetooth/mapclient/Message$Type;

    return-object p1

    .line 144
    :cond_0
    const-string v0, "SMS_GSM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$Type;->SMS_GSM:Lcom/android/bluetooth/mapclient/Message$Type;

    return-object p1

    .line 146
    :cond_1
    const-string v0, "SMS_CDMA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$Type;->SMS_CDMA:Lcom/android/bluetooth/mapclient/Message$Type;

    return-object p1

    .line 148
    :cond_2
    const-string v0, "MMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 149
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$Type;->MMS:Lcom/android/bluetooth/mapclient/Message$Type;

    return-object p1

    .line 152
    :cond_3
    sget-object p1, Lcom/android/bluetooth/mapclient/Message$Type;->UNKNOWN:Lcom/android/bluetooth/mapclient/Message$Type;

    return-object p1
.end method

.method private yesnoToBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 138
    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAttachmentSize()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/android/bluetooth/mapclient/Message;->mAttachmentSize:I

    return v0
.end method

.method public getDateTime()Ljava/util/Date;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getHandle()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getReceptionStatus()Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mReceptionStatus:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    return-object v0
.end method

.method public getRecipientAddressing()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mRecipientAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mRecipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplytoAddressing()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mReplytoAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressing()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSenderAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/mapclient/Message$Type;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/Message;->mType:Lcom/android/bluetooth/mapclient/Message$Type;

    return-object v0
.end method

.method public isPriority()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mPriority:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mProtected:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mRead:Z

    return v0
.end method

.method public isSent()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mSent:Z

    return v0
.end method

.method public isText()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/Message;->mText:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    :try_start_0
    const-string v1, "handle"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v1, "datetime"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mDateTime:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v1, "sender_name"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v1, "sender_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v1, "replyto_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mReplytoAddressing:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v1, "recipient_name"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v1, "recipient_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mRecipientAddressing:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mType:Lcom/android/bluetooth/mapclient/Message$Type;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v1, "size"

    iget v2, p0, Lcom/android/bluetooth/mapclient/Message;->mSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v1, "text"

    iget-boolean v2, p0, Lcom/android/bluetooth/mapclient/Message;->mText:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 183
    const-string v1, "reception_status"

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/Message;->mReceptionStatus:Lcom/android/bluetooth/mapclient/Message$ReceptionStatus;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v1, "attachment_size"

    iget v2, p0, Lcom/android/bluetooth/mapclient/Message;->mAttachmentSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v1, "priority"

    iget-boolean v2, p0, Lcom/android/bluetooth/mapclient/Message;->mPriority:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 186
    const-string v1, "read"

    iget-boolean v2, p0, Lcom/android/bluetooth/mapclient/Message;->mRead:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 187
    const-string v1, "sent"

    iget-boolean v2, p0, Lcom/android/bluetooth/mapclient/Message;->mSent:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 188
    const-string v1, "protected"

    iget-boolean v2, p0, Lcom/android/bluetooth/mapclient/Message;->mProtected:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 193
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
