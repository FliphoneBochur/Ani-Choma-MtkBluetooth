.class public Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListingElement"

.field private static final V:Z = false


# instance fields
.field private mAttachmentMimeTypes:Ljava/lang/String;

.field private mAttachmentSize:I

.field private mCpHandle:J

.field private mCursorIndex:I

.field private mDateTime:J

.field private mDeliveryStatus:Ljava/lang/String;

.field private mFolderType:Ljava/lang/String;

.field private mMsgTypeAppParamSet:Z

.field private mPriority:Ljava/lang/String;

.field private mProtect:Ljava/lang/String;

.field private mRead:Z

.field private mReceptionStatus:Ljava/lang/String;

.field private mRecipientAddressing:Ljava/lang/String;

.field private mRecipientName:Ljava/lang/String;

.field private mReplytoAddressing:Ljava/lang/String;

.field private mReportRead:Z

.field private mSenderAddressing:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field private mSent:Ljava/lang/String;

.field private mSize:I

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field private mThreadName:Ljava/lang/String;

.field private mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    .line 34
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 35
    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    .line 36
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    .line 44
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    .line 48
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    .line 50
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    .line 57
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    .line 58
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I
    .locals 4

    .line 258
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 259
    const/4 p1, 0x1

    return p1

    .line 260
    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 261
    const/4 p1, -0x1

    return p1

    .line 263
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I

    move-result p1

    return p1
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 282
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 283
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 284
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 285
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x0

    const-string v1, "msg"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handle"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 292
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 294
    const-string v4, "00:26:e8"

    invoke-static {v3, v4}, Lcom/android/bluetooth/DeviceWorkArounds;->addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    const-string v3, "[\\P{ASCII}&\"><]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const-string v2, "---"

    .line 303
    :cond_1
    const/4 v3, 0x0

    .line 304
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x100

    if-ge v4, v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    :cond_2
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 303
    const-string v3, "subject"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 308
    nop

    .line 309
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getDateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v2

    .line 308
    const-string v3, "datetime"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 312
    nop

    .line 313
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v3, "sender_name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 316
    const-string v3, "sender_addressing"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 319
    const-string v3, "replyto_addressing"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 322
    nop

    .line 323
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v3, "recipient_name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 326
    const-string v3, "recipient_addressing"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    :cond_9
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v2, :cond_a

    .line 330
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    :cond_a
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "size"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    :cond_b
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 336
    const-string v4, "text"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_c
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 339
    const-string v4, "reception_status"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    :cond_d
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 342
    const-string v4, "delivery_status"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    :cond_e
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    if-eq v2, v3, :cond_f

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attachment_size"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    :cond_f
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 348
    const-string v3, "attachment_mime_types"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    :cond_10
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 351
    const-string v3, "priority"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    :cond_11
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    if-eqz v2, :cond_12

    .line 354
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRead()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    :cond_12
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 357
    const-string v3, "sent"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    :cond_13
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 360
    const-string v3, "protected"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    :cond_14
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    if-eqz v2, :cond_15

    if-eqz p2, :cond_15

    .line 363
    const-string v3, "conversation_id"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    :cond_15
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    if-eqz v2, :cond_16

    if-eqz p2, :cond_16

    .line 366
    const-string p2, "conversation_name"

    invoke-interface {p1, v0, p2, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    :cond_16
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    if-eqz p2, :cond_17

    .line 369
    const-string v2, "folder_type"

    invoke-interface {p1, v0, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    :cond_17
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    return-void

    .line 286
    :cond_18
    :goto_0
    return-void
.end method

.method public getAttachmentMimeTypes()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentSize()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    return v0
.end method

.method public getCursorIndex()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return v0
.end method

.method public getDateTime()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    return-wide v0
.end method

.method public getDateTimeString()Ljava/lang/String;
    .locals 4

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 85
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryStatus()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    return-wide v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    return-object v0
.end method

.method public getProtect()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    if-eqz v0, :cond_0

    const-string v0, "yes"

    goto :goto_0

    :cond_0
    const-string v0, "no"

    :goto_0
    return-object v0
.end method

.method public getReadBool()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    return v0
.end method

.method public getReceptionStatus()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientAddressing()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyToAddressing()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressing()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSent()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public setAttachmentMimeTypes(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setAttachmentSize(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    .line 187
    return-void
.end method

.method public setCursorIndex(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    .line 66
    return-void
.end method

.method public setDateTime(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    .line 90
    return-void
.end method

.method public setDeliveryStatus(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setFolderType(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setHandle(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    .line 74
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setProtect(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setRead(ZZ)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    .line 215
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    .line 216
    return-void
.end method

.method public setReceptionStatus(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setRecipientAddressing(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setReplytoAddressing(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSenderAddressing(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSent(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    .line 155
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setThreadId(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 2

    .line 235
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    .line 238
    :cond_0
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Z)V
    .locals 0

    .line 145
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    .line 146
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 147
    return-void
.end method
