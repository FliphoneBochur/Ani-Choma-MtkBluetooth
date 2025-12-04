.class public Lcom/android/bluetooth/map/BluetoothMapAppParams;
.super Ljava/lang/Object;
.source "BluetoothMapAppParams.java"


# static fields
.field private static final ATTACHMENT:I = 0xa

.field private static final ATTACHMENT_LEN:I = 0x1

.field private static final CHARSET:I = 0x14

.field private static final CHARSET_LEN:I = 0x1

.field public static final CHARSET_NATIVE:I = 0x0

.field public static final CHARSET_UTF8:I = 0x1

.field private static final CHAT_STATE:I = 0x21

.field private static final CHAT_STATE_CONVO_ID:I = 0x39

.field private static final CHAT_STATE_CONVO_ID_LEN:I = 0x10

.field private static final CHAT_STATE_LEN:I = 0x1

.field private static final CONVO_LISTING_SIZE:I = 0x36

.field private static final CONVO_LISTING_SIZE_LEN:I = 0x2

.field private static final CONVO_LIST_VER_COUNTER:I = 0x1b

.field private static final CONVO_LIST_VER_COUNTER_LEN:I = 0x10

.field private static final CONVO_PARAMETER_MASK:I = 0x26

.field private static final CONVO_PARAMETER_MASK_LEN:I = 0x4

.field private static final DATABASE_INDETIFIER:I = 0x1a

.field private static final DATABASE_INDETIFIER_LEN:I = 0x10

.field private static final FILTER_CONVO_ID:I = 0x22

.field private static final FILTER_CONVO_ID_LEN:I = 0x20

.field private static final FILTER_MESSAGE_HANDLE:I = 0x24

.field private static final FILTER_MESSAGE_HANDLE_LEN:I = 0x8

.field private static final FILTER_MESSAGE_TYPE:I = 0x3

.field private static final FILTER_MESSAGE_TYPE_LEN:I = 0x1

.field public static final FILTER_MSG_TYPE_MASK:I = 0x1f

.field public static final FILTER_NO_EMAIL:I = 0x4

.field public static final FILTER_NO_IM:I = 0x10

.field public static final FILTER_NO_MMS:I = 0x8

.field public static final FILTER_NO_SMS_CDMA:I = 0x2

.field public static final FILTER_NO_SMS_GSM:I = 0x1

.field private static final FILTER_ORIGINATOR:I = 0x8

.field private static final FILTER_PERIOD_BEGIN:I = 0x4

.field private static final FILTER_PERIOD_END:I = 0x5

.field private static final FILTER_PRESENCE:I = 0x37

.field private static final FILTER_PRESENCE_LEN:I = 0x1

.field private static final FILTER_PRIORITY:I = 0x9

.field private static final FILTER_PRIORITY_LEN:I = 0x1

.field private static final FILTER_READ_STATUS:I = 0x6

.field private static final FILTER_READ_STATUS_LEN:I = 0x1

.field private static final FILTER_RECIPIENT:I = 0x7

.field private static final FILTER_UID_PRESENT:I = 0x38

.field private static final FILTER_UID_PRESENT_LEN:I = 0x1

.field private static final FOLDER_LISTING_SIZE:I = 0x11

.field private static final FOLDER_LISTING_SIZE_LEN:I = 0x2

.field private static final FOLDER_VER_COUNTER:I = 0x23

.field private static final FOLDER_VER_COUNTER_LEN:I = 0x20

.field private static final FRACTION_DELIVER:I = 0x16

.field public static final FRACTION_DELIVER_LAST:I = 0x1

.field private static final FRACTION_DELIVER_LEN:I = 0x1

.field public static final FRACTION_DELIVER_MORE:I = 0x0

.field private static final FRACTION_REQUEST:I = 0x15

.field public static final FRACTION_REQUEST_FIRST:I = 0x0

.field private static final FRACTION_REQUEST_LEN:I = 0x1

.field public static final FRACTION_REQUEST_NEXT:I = 0x1

.field public static final INVALID_VALUE_PARAMETER:I = -0x1

.field private static final LAST_ACTIVITY:I = 0x1e

.field private static final MAS_INSTANCE_ID:I = 0xf

.field private static final MAS_INSTANCE_ID_LEN:I = 0x1

.field private static final MAX_LIST_COUNT:I = 0x1

.field private static final MAX_LIST_COUNT_LEN:I = 0x2

.field private static final MESSAGE_LISTING_SIZE:I = 0x12

.field private static final MESSAGE_LISTING_SIZE_LEN:I = 0x2

.field private static final MSE_TIME:I = 0x19

.field private static final NEW_MESSAGE:I = 0xd

.field private static final NEW_MESSAGE_LEN:I = 0x1

.field private static final NOTIFICATION_FILTER:I = 0x25

.field private static final NOTIFICATION_FILTER_LEN:I = 0x4

.field private static final NOTIFICATION_STATUS:I = 0xe

.field private static final NOTIFICATION_STATUS_LEN:I = 0x1

.field public static final NOTIFICATION_STATUS_NO:I = 0x0

.field public static final NOTIFICATION_STATUS_YES:I = 0x1

.field private static final PARAMETER_MASK:I = 0x10

.field private static final PARAMETER_MASK_LEN:I = 0x4

.field private static final PRESENCE_AVAILABLE:I = 0x1c

.field private static final PRESENCE_AVAILABLE_LEN:I = 0x1

.field private static final PRESENCE_TEXT:I = 0x1d

.field private static final RETRY:I = 0xc

.field private static final RETRY_LEN:I = 0x1

.field private static final START_OFFSET:I = 0x2

.field private static final START_OFFSET_LEN:I = 0x2

.field private static final STATUS_INDICATOR:I = 0x17

.field public static final STATUS_INDICATOR_DELETED:I = 0x1

.field private static final STATUS_INDICATOR_LEN:I = 0x1

.field public static final STATUS_INDICATOR_READ:I = 0x0

.field private static final STATUS_VALUE:I = 0x18

.field private static final STATUS_VALUE_LEN:I = 0x1

.field public static final STATUS_VALUE_NO:I = 0x0

.field public static final STATUS_VALUE_YES:I = 0x1

.field private static final SUBJECT_LENGTH:I = 0x13

.field private static final SUBJECT_LENGTH_LEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAppParams"

.field private static final TRANSPARENT:I = 0xb

.field private static final TRANSPARENT_LEN:I = 0x1


# instance fields
.field private mAttachment:I

.field private mCharset:I

.field private mChatState:I

.field private mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

.field private mConvoListingSize:I

.field private mConvoListingVerCounterHigh:J

.field private mConvoListingVerCounterLow:J

.field private mConvoParameterMask:J

.field private mDatabaseIdentifierHigh:J

.field private mDatabaseIdentifierLow:J

.field private mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

.field private mFilterMessageType:I

.field private mFilterMsgHandle:J

.field private mFilterOriginator:Ljava/lang/String;

.field private mFilterPeriodBegin:J

.field private mFilterPeriodEnd:J

.field private mFilterPresence:I

.field private mFilterPriority:I

.field private mFilterReadStatus:I

.field private mFilterRecipient:Ljava/lang/String;

.field private mFilterUidPresent:I

.field private mFolderListingSize:I

.field private mFolderVerCounterHigh:J

.field private mFolderVerCounterLow:J

.field private mFractionDeliver:I

.field private mFractionRequest:I

.field private mLastActivity:J

.field private mMasInstanceId:I

.field private mMaxListCount:I

.field private mMessageListingSize:I

.field private mMseTime:J

.field private mNewMessage:I

.field private mNotificationFilter:J

.field private mNotificationStatus:I

.field private mParameterMask:J

.field private mPresenceAvailability:I

.field private mPresenceStatus:Ljava/lang/String;

.field private mRetry:I

.field private mStartOffset:I

.field private mStatusIndicator:I

.field private mStatusValue:I

.field private mSubjectLength:I

.field private mTransparent:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 135
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 136
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 138
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 139
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 140
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 141
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 142
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 143
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 144
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 145
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 146
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 147
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 148
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 149
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    .line 150
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 151
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 152
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 153
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 154
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    .line 155
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 156
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 157
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 158
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 159
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 160
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 161
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 163
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    .line 164
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    .line 165
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    .line 166
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    .line 167
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    .line 168
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    .line 169
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    .line 170
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    .line 171
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 172
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    .line 173
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 174
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    .line 175
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    .line 176
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 177
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    .line 178
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    .line 187
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 135
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 136
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 138
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 139
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 140
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 141
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 142
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 143
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 144
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 145
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 146
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 147
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 148
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 149
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    .line 150
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 151
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 152
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 153
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 154
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    .line 155
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 156
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 157
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 158
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 159
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 160
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 161
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 163
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    .line 164
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    .line 165
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    .line 166
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    .line 167
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    .line 168
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    .line 169
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    .line 170
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    .line 171
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 172
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    .line 173
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 174
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    .line 175
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    .line 176
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 177
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    .line 178
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    .line 208
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->parseParams([B)V

    .line 209
    return-void
.end method

.method private getParamMaxLength()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 578
    nop

    .line 579
    nop

    .line 580
    nop

    .line 581
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/16 v4, 0x14

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/16 v5, 0xad

    add-int/2addr v5, v0

    .line 582
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    add-int/2addr v5, v0

    .line 583
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v5, v0

    .line 586
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 587
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v5, v0

    .line 589
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v7

    cmp-long v0, v7, v2

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    add-int/2addr v5, v0

    .line 590
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 591
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v5, v0

    .line 593
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v4

    :goto_3
    add-int/2addr v5, v1

    .line 594
    return v5
.end method

.method private parseParams([B)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 225
    nop

    .line 227
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 229
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 230
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 231
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 232
    const-wide v4, 0xffffffffL

    const v6, 0xffff

    const-string v7, " expected to be more than 0"

    const/4 v8, 0x4

    const/16 v9, 0x10

    const/4 v10, 0x2

    const-string v11, " expected: "

    const-string v12, "BluetoothMapAppParams"

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown TagId received ( 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), skipping..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 525
    :pswitch_0
    if-eq v2, v9, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHAT_STATE_CONVO_ID: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 530
    :cond_0
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v1, v3, 0x8

    .line 531
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 530
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setChatStateConvoId(JJ)V

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHAT_STATE_CONVO_ID: convo id MSB="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", LSB(+8)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    .line 534
    invoke-static {v5, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    goto/16 :goto_1

    .line 517
    :pswitch_1
    if-eq v2, v13, :cond_1

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_UID_PRESENT: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 521
    :cond_1
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterUidPresent(I)V

    .line 523
    goto/16 :goto_1

    .line 509
    :pswitch_2
    if-eq v2, v13, :cond_2

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_PRESENCE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 513
    :cond_2
    aget-byte v1, p1, v3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPresence(I)V

    .line 515
    goto/16 :goto_1

    .line 499
    :pswitch_3
    if-eq v2, v10, :cond_3

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LISTING_SIZE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 505
    :cond_3
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    .line 507
    goto/16 :goto_1

    .line 551
    :pswitch_4
    if-eq v2, v8, :cond_4

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONVO_PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 555
    :cond_4
    nop

    .line 556
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    .line 555
    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoParameterMask(J)V

    .line 558
    goto/16 :goto_1

    .line 349
    :pswitch_5
    if-eq v2, v8, :cond_5

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIFICATION_FILTER: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 353
    :cond_5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationFilter(J)V

    .line 355
    goto/16 :goto_1

    .line 542
    :pswitch_6
    const/16 v1, 0x8

    if-eqz v2, :cond_6

    if-gt v2, v1, :cond_6

    .line 543
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMsgHandle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 545
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILTER_MESSAGE_HANDLE: Wrong length received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    goto/16 :goto_1

    .line 540
    :pswitch_7
    goto/16 :goto_1

    .line 491
    :pswitch_8
    const/16 v1, 0x20

    if-eqz v2, :cond_7

    if-gt v2, v1, :cond_7

    .line 492
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterConvoId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 494
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILTER_CONVO_ID: Wrong length received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    goto/16 :goto_1

    .line 483
    :pswitch_9
    if-eq v2, v13, :cond_8

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHAT_STATE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 487
    :cond_8
    aget-byte v1, p1, v3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setChatState(I)V

    .line 489
    goto/16 :goto_1

    .line 475
    :pswitch_a
    if-eqz v2, :cond_9

    .line 476
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setLastActivity(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 478
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAST_ACTIVITY: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    goto/16 :goto_1

    .line 467
    :pswitch_b
    if-eqz v2, :cond_a

    .line 468
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setPresenceStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 470
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRESENCE_STATUS: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    goto/16 :goto_1

    .line 459
    :pswitch_c
    if-eq v2, v13, :cond_b

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRESENCE_AVAILABLE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 463
    :cond_b
    aget-byte v1, p1, v3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setPresenceAvailability(I)V

    .line 465
    goto/16 :goto_1

    .line 450
    :pswitch_d
    if-eq v2, v9, :cond_c

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONVO_LIST_VER_COUNTER: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 454
    :cond_c
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v1, v3, 0x8

    .line 455
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 454
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingVerCounter(JJ)V

    .line 457
    goto/16 :goto_1

    .line 441
    :pswitch_e
    if-eq v2, v9, :cond_d

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATABASE_IDENTIFIER: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 445
    :cond_d
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v1, v3, 0x8

    .line 446
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 445
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    .line 448
    goto/16 :goto_1

    .line 438
    :pswitch_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(Ljava/lang/String;)V

    .line 439
    goto/16 :goto_1

    .line 429
    :pswitch_10
    if-eq v2, v13, :cond_e

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATUS_VALUER: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 434
    :cond_e
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusValue(I)V

    .line 436
    goto/16 :goto_1

    .line 421
    :pswitch_11
    if-eq v2, v13, :cond_f

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATUS_INDICATOR: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 425
    :cond_f
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusIndicator(I)V

    .line 427
    goto/16 :goto_1

    .line 413
    :pswitch_12
    if-eq v2, v13, :cond_10

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FRACTION_DELIVER: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 417
    :cond_10
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    .line 419
    goto/16 :goto_1

    .line 405
    :pswitch_13
    if-eq v2, v13, :cond_11

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FRACTION_REQUEST: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 409
    :cond_11
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionRequest(I)V

    .line 411
    goto/16 :goto_1

    .line 397
    :pswitch_14
    if-eq v2, v13, :cond_12

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHARSET: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 401
    :cond_12
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setCharset(I)V

    .line 403
    goto/16 :goto_1

    .line 389
    :pswitch_15
    if-eq v2, v13, :cond_13

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUBJECT_LENGTH: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 393
    :cond_13
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setSubjectLength(I)V

    .line 395
    goto/16 :goto_1

    .line 381
    :pswitch_16
    if-eq v2, v10, :cond_14

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 385
    :cond_14
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 387
    goto/16 :goto_1

    .line 373
    :pswitch_17
    if-eq v2, v10, :cond_15

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOLDER_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 377
    :cond_15
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    .line 379
    goto/16 :goto_1

    .line 365
    :pswitch_18
    if-eq v2, v8, :cond_16

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 369
    :cond_16
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    .line 371
    goto/16 :goto_1

    .line 357
    :pswitch_19
    if-eq v2, v13, :cond_17

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAS_INSTANCE_ID: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 361
    :cond_17
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    .line 363
    goto/16 :goto_1

    .line 341
    :pswitch_1a
    if-eq v2, v13, :cond_18

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIFICATION_STATUS: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 345
    :cond_18
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationStatus(I)V

    .line 347
    goto/16 :goto_1

    .line 332
    :pswitch_1b
    if-eq v2, v13, :cond_19

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEW_MESSAGE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 337
    :cond_19
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    .line 339
    goto/16 :goto_1

    .line 324
    :pswitch_1c
    if-eq v2, v13, :cond_1a

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETRY: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 328
    :cond_1a
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setRetry(I)V

    .line 330
    goto/16 :goto_1

    .line 315
    :pswitch_1d
    if-eq v2, v13, :cond_1b

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TRANSPARENT: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 320
    :cond_1b
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setTransparent(I)V

    .line 322
    goto/16 :goto_1

    .line 307
    :pswitch_1e
    if-eq v2, v13, :cond_1c

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATTACHMENT: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    :cond_1c
    aget-byte v1, p1, v3

    and-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setAttachment(I)V

    .line 313
    goto/16 :goto_1

    .line 299
    :pswitch_1f
    if-eq v2, v13, :cond_1d

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_PRIORITY: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    :cond_1d
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPriority(I)V

    .line 305
    goto/16 :goto_1

    .line 291
    :pswitch_20
    if-eqz v2, :cond_1e

    .line 292
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterOriginator(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 294
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_ORIGINATOR: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    goto/16 :goto_1

    .line 283
    :pswitch_21
    if-eqz v2, :cond_1f

    .line 284
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterRecipient(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_RECIPIENT: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    goto/16 :goto_1

    .line 275
    :pswitch_22
    if-eq v2, v13, :cond_20

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_READ_STATUS: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 279
    :cond_20
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterReadStatus(I)V

    .line 281
    goto/16 :goto_1

    .line 267
    :pswitch_23
    if-eqz v2, :cond_21

    .line 268
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_PERIOD_END: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    goto/16 :goto_1

    .line 259
    :pswitch_24
    if-eqz v2, :cond_22

    .line 260
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodBegin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_PERIOD_BEGIN: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto/16 :goto_1

    .line 251
    :pswitch_25
    if-eq v2, v13, :cond_23

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FILTER_MESSAGE_TYPE: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    :cond_23
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    .line 257
    goto :goto_1

    .line 242
    :pswitch_26
    if-eq v2, v10, :cond_24

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START_OFFSET: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_24
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 249
    goto :goto_1

    .line 234
    :pswitch_27
    if-eq v2, v10, :cond_25

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX_LIST_COUNT: Wrong length received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    :cond_25
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 240
    nop

    .line 565
    :goto_1
    add-int v1, v3, v2

    goto/16 :goto_0

    .line 567
    :cond_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encodeParams()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 605
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParamMaxLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 606
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 610
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 611
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 612
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 615
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 616
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 617
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 620
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 621
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 622
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    const/4 v5, 0x4

    const-string v6, "UTF-8"

    if-eqz v1, :cond_3

    .line 625
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 626
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 627
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 629
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-eqz v1, :cond_4

    .line 630
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 631
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 632
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 634
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 635
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 636
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 637
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 639
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 640
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 641
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 642
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 644
    :cond_6
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x8

    if-eqz v1, :cond_7

    .line 645
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 646
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 647
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 649
    :cond_7
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 650
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 651
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 652
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 654
    :cond_8
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 655
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 656
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 657
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 659
    :cond_9
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v1

    if-eq v1, v4, :cond_a

    .line 660
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 661
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 662
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 664
    :cond_a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v1

    if-eq v1, v4, :cond_b

    .line 665
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 666
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 667
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 669
    :cond_b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v1

    if-eq v1, v4, :cond_c

    .line 670
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 671
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 672
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 674
    :cond_c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v1

    if-eq v1, v4, :cond_d

    .line 675
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 676
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 677
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 679
    :cond_d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    cmp-long v1, v10, v7

    if-eqz v1, :cond_e

    .line 680
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 681
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 682
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    long-to-int v1, v10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 684
    :cond_e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v1

    if-eq v1, v4, :cond_f

    .line 685
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 686
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 687
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 689
    :cond_f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v10

    cmp-long v1, v10, v7

    const/16 v10, 0x10

    if-eqz v1, :cond_10

    .line 690
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 691
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 692
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v11

    long-to-int v1, v11

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 694
    :cond_10
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v1

    if-eq v1, v4, :cond_11

    .line 695
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 696
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 697
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 699
    :cond_11
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v1

    if-eq v1, v4, :cond_12

    .line 700
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 701
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 702
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 704
    :cond_12
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v1

    if-eq v1, v4, :cond_13

    .line 705
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 706
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 709
    :cond_13
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    if-eq v1, v4, :cond_14

    .line 710
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 711
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 712
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 714
    :cond_14
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v1

    if-eq v1, v4, :cond_15

    .line 715
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 716
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 717
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 719
    :cond_15
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v1

    if-eq v1, v4, :cond_16

    .line 720
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 721
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 722
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 724
    :cond_16
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v1

    if-eq v1, v4, :cond_17

    .line 725
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 726
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 727
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 729
    :cond_17
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v1

    if-eq v1, v4, :cond_18

    .line 730
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 731
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 732
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 734
    :cond_18
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v11

    cmp-long v1, v11, v7

    if-eqz v1, :cond_19

    .line 735
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 736
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 737
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 740
    :cond_19
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getDatabaseIdentifier()[B

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 741
    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 742
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 743
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getDatabaseIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 745
    :cond_1a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingVerCounter()[B

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 746
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 747
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 748
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingVerCounter()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 750
    :cond_1b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v1

    if-eq v1, v4, :cond_1c

    .line 751
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 752
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 753
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 755
    :cond_1c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 756
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 757
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 758
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 760
    :cond_1d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v11

    cmp-long v1, v11, v7

    if-eqz v1, :cond_1e

    .line 761
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 762
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 763
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 765
    :cond_1e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v1

    if-eq v1, v4, :cond_1f

    .line 766
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 767
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 768
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 770
    :cond_1f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    const/16 v6, 0x20

    if-eqz v1, :cond_20

    .line 771
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 772
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 773
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 774
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 776
    :cond_20
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingSize()I

    move-result v1

    if-eq v1, v4, :cond_21

    .line 777
    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 778
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 779
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingSize()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 781
    :cond_21
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPresence()I

    move-result v1

    if-eq v1, v4, :cond_22

    .line 782
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 783
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 784
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPresence()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 786
    :cond_22
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterUidPresent()I

    move-result v1

    if-eq v1, v4, :cond_23

    .line 787
    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 788
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 789
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterUidPresent()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 791
    :cond_23
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 792
    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 793
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 794
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 795
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 797
    :cond_24
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderVerCounter()[B

    move-result-object v1

    if-eqz v1, :cond_25

    .line 798
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 799
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 800
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderVerCounter()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 802
    :cond_25
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-eqz v1, :cond_26

    .line 803
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 804
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 805
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 807
    :cond_26
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-eqz v1, :cond_27

    .line 808
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 809
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 810
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 814
    :cond_27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 815
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v3, v0

    .line 814
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 816
    return-object v0
.end method

.method public getAttachment()I
    .locals 1

    .line 1171
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    return v0
.end method

.method public getCharset()I
    .locals 1

    .line 1311
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    return v0
.end method

.method public getChatState()I
    .locals 1

    .line 1117
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    return v0
.end method

.method public getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    return-object v0
.end method

.method public getChatStateConvoIdByteArray()[B
    .locals 3

    .line 1026
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v0, :cond_0

    .line 1027
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1028
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1029
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1030
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 1032
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChatStateConvoIdString()Ljava/lang/String;
    .locals 2

    .line 1037
    nop

    .line 1038
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1039
    return-object v0
.end method

.method public getConvoListingSize()I
    .locals 1

    .line 1293
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    return v0
.end method

.method public getConvoListingVerCounter()[B
    .locals 4

    .line 993
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 995
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 996
    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 997
    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 998
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 1000
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConvoParameterMask()J
    .locals 2

    .line 1267
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    return-wide v0
.end method

.method public getDatabaseIdentifier()[B
    .locals 4

    .line 976
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 978
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 979
    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 980
    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 981
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 983
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    return-object v0
.end method

.method public getFilterConvoIdString()Ljava/lang/String;
    .locals 2

    .line 1092
    nop

    .line 1093
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1093
    :cond_0
    const/4 v0, 0x0

    .line 1096
    :goto_0
    return-object v0
.end method

.method public getFilterLastActivityBegin()J
    .locals 2

    .line 873
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterLastActivityBeginString()Ljava/lang/String;
    .locals 4

    .line 877
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 878
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 879
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterLastActivityEnd()J
    .locals 2

    .line 897
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterLastActivityEndString()Ljava/lang/String;
    .locals 4

    .line 901
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 902
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 903
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterMessageType()I
    .locals 1

    .line 842
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    return v0
.end method

.method public getFilterMsgHandle()J
    .locals 2

    .line 1055
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    return-wide v0
.end method

.method public getFilterMsgHandleString()Ljava/lang/String;
    .locals 4

    .line 1059
    nop

    .line 1060
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1061
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1060
    :cond_0
    const/4 v0, 0x0

    .line 1063
    :goto_0
    return-object v0
.end method

.method public getFilterOriginator()Ljava/lang/String;
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterPeriodBegin()J
    .locals 2

    .line 853
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterPeriodBeginString()Ljava/lang/String;
    .locals 4

    .line 857
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 858
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 859
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterPeriodEnd()J
    .locals 2

    .line 893
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterPeriodEndString()Ljava/lang/String;
    .locals 4

    .line 917
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 918
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 919
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterPresence()I
    .locals 1

    .line 1078
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    return v0
.end method

.method public getFilterPriority()I
    .locals 1

    .line 960
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    return v0
.end method

.method public getFilterReadStatus()I
    .locals 1

    .line 933
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    return v0
.end method

.method public getFilterRecipient()Ljava/lang/String;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterUidPresent()I
    .locals 1

    .line 1067
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    return v0
.end method

.method public getFolderListingSize()I
    .locals 1

    .line 1271
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    return v0
.end method

.method public getFolderVerCounter()[B
    .locals 4

    .line 1010
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1012
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1013
    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1014
    iget-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1015
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 1017
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFractionDeliver()I
    .locals 1

    .line 1334
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    return v0
.end method

.method public getFractionRequest()I
    .locals 1

    .line 1323
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    return v0
.end method

.method public getLastActivity()J
    .locals 2

    .line 1121
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    return-wide v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    .line 1125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1126
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1127
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMasInstanceId()I
    .locals 1

    .line 1238
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    return v0
.end method

.method public getMaxListCount()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    return v0
.end method

.method public getMessageListingSize()I
    .locals 1

    .line 1282
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    return v0
.end method

.method public getMseTime()J
    .locals 2

    .line 1367
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    return-wide v0
.end method

.method public getMseTimeString()Ljava/lang/String;
    .locals 4

    .line 1371
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1372
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1373
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewMessage()I
    .locals 1

    .line 1204
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    return v0
.end method

.method public getNotificationFilter()J
    .locals 2

    .line 1226
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    return-wide v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .line 1215
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    return v0
.end method

.method public getParameterMask()J
    .locals 2

    .line 1249
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    return-wide v0
.end method

.method public getPresenceAvailability()I
    .locals 1

    .line 1163
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    return v0
.end method

.method public getPresenceStatus()Ljava/lang/String;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    .line 1193
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .line 831
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    return v0
.end method

.method public getStatusIndicator()I
    .locals 1

    .line 1345
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    return v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 1356
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    return v0
.end method

.method public getSubjectLength()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    return v0
.end method

.method public getTransparent()I
    .locals 1

    .line 1182
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    return v0
.end method

.method public setAttachment(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1175
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1178
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 1179
    return-void

    .line 1176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCharset(I)V
    .locals 3

    .line 1315
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1319
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 1320
    return-void

    .line 1316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", valid range is 0x0000 to 0x0001"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChatState(I)V
    .locals 1

    .line 1110
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1113
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    .line 1114
    return-void

    .line 1111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChatStateConvoId(JJ)V
    .locals 1

    .line 1043
    new-instance v0, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    .line 1044
    return-void
.end method

.method public setConvoListingSize(I)V
    .locals 1

    .line 1297
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1300
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    .line 1301
    return-void

    .line 1298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConvoListingVerCounter(JJ)V
    .locals 0

    .line 988
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    .line 989
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    .line 990
    return-void
.end method

.method public setConvoParameterMask(J)V
    .locals 2

    .line 1260
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1263
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    .line 1264
    return-void

    .line 1261
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDatabaseIdentifier(JJ)V
    .locals 0

    .line 971
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    .line 972
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    .line 973
    return-void
.end method

.method public setFilterConvoId(Ljava/lang/String;)V
    .locals 2

    .line 1102
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    goto :goto_0

    .line 1103
    :catch_0
    move-exception p1

    .line 1104
    const-string v0, "BluetoothMapAppParams"

    const-string v1, "Error creating long from id string"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    :goto_0
    return-void
.end method

.method public setFilterLastActivityBegin(J)V
    .locals 0

    .line 883
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 884
    return-void
.end method

.method public setFilterLastActivityBegin(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 887
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 889
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 890
    return-void
.end method

.method public setFilterLastActivityEnd(J)V
    .locals 0

    .line 907
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 908
    return-void
.end method

.method public setFilterLastActivityEnd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 927
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 929
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 930
    return-void
.end method

.method public setFilterMessageType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 846
    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 849
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 850
    return-void

    .line 847
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x001F"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilterMsgHandle(Ljava/lang/String;)V
    .locals 2

    .line 1048
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    goto :goto_0

    .line 1049
    :catch_0
    move-exception p1

    .line 1050
    const-string v0, "BluetoothMapAppParams"

    const-string v1, "Error creating long from handle string"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    :goto_0
    return-void
.end method

.method public setFilterOriginator(Ljava/lang/String;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 957
    return-void
.end method

.method public setFilterPeriodBegin(J)V
    .locals 0

    .line 863
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 864
    return-void
.end method

.method public setFilterPeriodBegin(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 867
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 869
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 870
    return-void
.end method

.method public setFilterPeriodEnd(J)V
    .locals 0

    .line 923
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 924
    return-void
.end method

.method public setFilterPeriodEnd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 911
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 913
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 914
    return-void
.end method

.method public setFilterPresence(I)V
    .locals 1

    .line 1149
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1152
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    .line 1153
    return-void

    .line 1150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilterPriority(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 964
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 967
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 968
    return-void

    .line 965
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilterReadStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 937
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 940
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 941
    return-void

    .line 938
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilterRecipient(Ljava/lang/String;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 949
    return-void
.end method

.method public setFilterUidPresent(I)V
    .locals 1

    .line 1071
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1074
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    .line 1075
    return-void

    .line 1072
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFolderListingSize(I)V
    .locals 1

    .line 1275
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1278
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 1279
    return-void

    .line 1276
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFolderVerCounter(JJ)V
    .locals 0

    .line 1005
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    .line 1006
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    .line 1007
    return-void
.end method

.method public setFractionDeliver(I)V
    .locals 1

    .line 1338
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1341
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 1342
    return-void

    .line 1339
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFractionRequest(I)V
    .locals 1

    .line 1327
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1330
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 1331
    return-void

    .line 1328
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLastActivity(J)V
    .locals 0

    .line 1131
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 1132
    return-void
.end method

.method public setLastActivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1135
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1137
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    .line 1138
    return-void
.end method

.method public setMasInstanceId(I)V
    .locals 1

    .line 1242
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1245
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 1246
    return-void

    .line 1243
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxListCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 824
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 827
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 828
    return-void

    .line 825
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessageListingSize(I)V
    .locals 1

    .line 1286
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1289
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 1290
    return-void

    .line 1287
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMseTime(J)V
    .locals 0

    .line 1377
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 1378
    return-void
.end method

.method public setMseTime(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1381
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1383
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 1384
    return-void
.end method

.method public setNewMessage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1208
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1211
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 1212
    return-void

    .line 1209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNotificationFilter(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1230
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1234
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    .line 1235
    return-void

    .line 1231
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Out of range, valid range is 0x0000 to 0xFFFFFFFFL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNotificationStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1219
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1222
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 1223
    return-void

    .line 1220
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParameterMask(J)V
    .locals 2

    .line 1253
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1256
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 1257
    return-void

    .line 1254
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPresenceAvailability(I)V
    .locals 1

    .line 1156
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1159
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    .line 1160
    return-void

    .line 1157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPresenceStatus(Ljava/lang/String;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    .line 1142
    return-void
.end method

.method public setRetry(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1197
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1200
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 1201
    return-void

    .line 1198
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 835
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 838
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 839
    return-void

    .line 836
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStatusIndicator(I)V
    .locals 1

    .line 1349
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1352
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 1353
    return-void

    .line 1350
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStatusValue(I)V
    .locals 1

    .line 1360
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1363
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 1364
    return-void

    .line 1361
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubjectLength(I)V
    .locals 1

    .line 1304
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1307
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 1308
    return-void

    .line 1305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransparent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1186
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1189
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 1190
    return-void

    .line 1187
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
