.class Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterInfo"
.end annotation


# static fields
.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_IM:I = 0x3

.field public static final TYPE_MMS:I = 0x1

.field public static final TYPE_SMS:I


# instance fields
.field public mContactColBtUid:I

.field public mContactColChatState:I

.field public mContactColContactUci:I

.field public mContactColLastActive:I

.field public mContactColName:I

.field public mContactColNickname:I

.field public mContactColPresenceState:I

.field public mContactColPresenceText:I

.field public mContactColPriority:I

.field public mConvoColConvoId:I

.field public mConvoColLastActivity:I

.field public mConvoColName:I

.field public mConvoColRead:I

.field public mConvoColSummary:I

.field public mConvoColVersionCounter:I

.field public mMessageColAccountId:I

.field public mMessageColAttachment:I

.field public mMessageColAttachmentMime:I

.field public mMessageColAttachmentSize:I

.field public mMessageColBccAddress:I

.field public mMessageColBody:I

.field public mMessageColCcAddress:I

.field public mMessageColDate:I

.field public mMessageColDelivery:I

.field public mMessageColFolder:I

.field public mMessageColFromAddress:I

.field public mMessageColId:I

.field public mMessageColPriority:I

.field public mMessageColProtected:I

.field public mMessageColRead:I

.field public mMessageColReception:I

.field public mMessageColReplyTo:I

.field public mMessageColSize:I

.field public mMessageColSubject:I

.field public mMessageColThreadId:I

.field public mMessageColThreadName:I

.field public mMessageColToAddress:I

.field public mMmsColAttachmentSize:I

.field public mMmsColDate:I

.field public mMmsColFolder:I

.field public mMmsColId:I

.field public mMmsColRead:I

.field public mMmsColSize:I

.field public mMmsColSubject:I

.field public mMmsColTextOnly:I

.field public mMmsColThreadId:I

.field mMsgType:I

.field mPhoneAlphaTag:Ljava/lang/String;

.field mPhoneNum:Ljava/lang/String;

.field mPhoneType:I

.field public mSmsColAddress:I

.field public mSmsColDate:I

.field public mSmsColFolder:I

.field public mSmsColId:I

.field public mSmsColRead:I

.field public mSmsColSubject:I

.field public mSmsColThreadId:I

.field public mSmsColType:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContent;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 279
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    .line 280
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 283
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    .line 284
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    .line 285
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBody:I

    .line 286
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    .line 287
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    .line 288
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    .line 289
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    .line 290
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    .line 291
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    .line 292
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    .line 293
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    .line 294
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReplyTo:I

    .line 295
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAccountId:I

    .line 296
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    .line 297
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    .line 298
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    .line 299
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    .line 300
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    .line 301
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReception:I

    .line 302
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    .line 303
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    .line 304
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    .line 306
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    .line 307
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    .line 308
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    .line 309
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    .line 310
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    .line 311
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    .line 312
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    .line 313
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    .line 315
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    .line 316
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    .line 317
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    .line 318
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    .line 319
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    .line 320
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    .line 321
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    .line 322
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    .line 323
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    .line 325
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    .line 326
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    .line 327
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    .line 328
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    .line 329
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColVersionCounter:I

    .line 330
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    .line 331
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    .line 332
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    .line 333
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    .line 334
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    .line 335
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    .line 336
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    .line 337
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    .line 338
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    .line 339
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V

    return-void
.end method


# virtual methods
.method public setEmailImConvoColumns(Landroid/database/Cursor;)V
    .locals 1

    .line 387
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    .line 388
    nop

    .line 389
    const-string v0, "last_thread_activity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    .line 390
    const-string v0, "thread_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    .line 391
    const-string v0, "read_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    .line 392
    nop

    .line 393
    const-string v0, "version_counter"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColVersionCounter:I

    .line 394
    const-string v0, "convo_summary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoContactColumns(Landroid/database/Cursor;)V

    .line 396
    return-void
.end method

.method public setEmailImConvoContactColumns(Landroid/database/Cursor;)V
    .locals 1

    .line 399
    const-string v0, "x_bt_uid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    .line 400
    nop

    .line 401
    const-string v0, "chat_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    .line 402
    const-string v0, "x_bt_uci"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    .line 403
    nop

    .line 404
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    .line 405
    nop

    .line 406
    const-string v0, "last_active"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    .line 407
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    .line 408
    nop

    .line 409
    const-string v0, "presence_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    .line 410
    nop

    .line 411
    const-string v0, "status_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    .line 412
    nop

    .line 413
    const-string v0, "priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    .line 414
    return-void
.end method

.method public setEmailMessageColumns(Landroid/database/Cursor;)V
    .locals 1

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMessageColumns(Landroid/database/Cursor;)V

    .line 369
    const-string v0, "cc_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    .line 370
    const-string v0, "bcc_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    .line 371
    nop

    .line 372
    const-string v0, "reply_to_List"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReplyTo:I

    .line 373
    return-void
.end method

.method public setImMessageColumns(Landroid/database/Cursor;)V
    .locals 1

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMessageColumns(Landroid/database/Cursor;)V

    .line 377
    nop

    .line 378
    const-string v0, "thread_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    .line 379
    nop

    .line 380
    const-string v0, "attachment_mime_types"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    .line 382
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBody:I

    .line 384
    return-void
.end method

.method public setMessageColumns(Landroid/database/Cursor;)V
    .locals 1

    .line 343
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    .line 344
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    .line 345
    const-string v0, "subject"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    .line 346
    const-string v0, "folder_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    .line 347
    const-string v0, "flag_read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    .line 348
    const-string v0, "message_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    .line 349
    nop

    .line 350
    const-string v0, "from_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    .line 351
    const-string v0, "to_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    .line 352
    nop

    .line 353
    const-string v0, "flag_attachment"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    .line 354
    nop

    .line 355
    const-string v0, "attachment_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    .line 356
    nop

    .line 357
    const-string v0, "high_priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    .line 358
    nop

    .line 359
    const-string v0, "flag_protected"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    .line 360
    nop

    .line 361
    const-string v0, "reception_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReception:I

    .line 362
    nop

    .line 363
    const-string v0, "delivery_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    .line 364
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    .line 365
    return-void
.end method

.method public setMmsColumns(Landroid/database/Cursor;)V
    .locals 2

    .line 428
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    .line 429
    const-string v0, "msg_box"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    .line 430
    const-string v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    .line 431
    const-string v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    .line 432
    const-string v1, "text_only"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    .line 433
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    .line 434
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    .line 435
    const-string v0, "sub"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    .line 436
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    .line 437
    return-void
.end method

.method public setSmsColumns(Landroid/database/Cursor;)V
    .locals 2

    .line 417
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    .line 418
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    .line 419
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    .line 420
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    .line 421
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    .line 422
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    .line 423
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    .line 424
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    .line 425
    return-void
.end method
