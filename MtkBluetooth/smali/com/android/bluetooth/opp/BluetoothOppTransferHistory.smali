.class public Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.super Landroid/app/Activity;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/MenuBar$MenuBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;,
        Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
    }
.end annotation


# static fields
.field private static final MENU_ACTION_Details:I = 0x1

.field private static final MENU_ACTION_FORGET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferHistory"

.field private static final V:Z

.field private static clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;


# instance fields
.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field protected mChangeObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;

.field private mContextMenu:Z

.field private mContextMenuPosition:I

.field private mDir:I

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ListView;

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mMenuOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mShowAllIncoming:Z

.field private mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

.field private mTransferCursor:Landroid/database/Cursor;

.field private mTransferRunningCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    .line 130
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/database/Cursor;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/widget/MenuBar;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Ljava/util/ArrayList;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;)Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
    .locals 0

    .line 92
    sput-object p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Landroid/database/Cursor;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferRunningCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method private clearAllDownloads()V
    .locals 7

    .line 451
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mDir:I

    if-nez v0, :cond_0

    .line 452
    const-string v0, "(direction == 0)"

    goto :goto_0

    .line 455
    :cond_0
    const-string v0, "(direction == 1)"

    .line 459
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status >= \'200\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v1, :cond_1

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "visibility"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IS NULL OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " == \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 461
    :cond_1
    move-object v4, v0

    .line 467
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 468
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 471
    const-string v1, "BluetoothOppTransferHistory"

    if-nez v0, :cond_2

    .line 472
    const-string v0, "clearAllDownloads::cursor == null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 475
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 476
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 477
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 482
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 483
    goto :goto_2

    .line 484
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 485
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 487
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 488
    return-void
.end method

.method private getClearableCount()I
    .locals 4

    .line 401
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    const-string v1, "BluetoothOppTransferHistory"

    if-eqz v0, :cond_0

    const-string v0, "getClearableCount ++"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    const/4 v0, 0x0

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v3, "status"

    .line 407
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 408
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 409
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    add-int/lit8 v0, v0, 0x1

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 419
    :cond_2
    goto :goto_1

    .line 415
    :catch_0
    move-exception v2

    .line 417
    const-string v3, "getClearableCount error."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    :goto_1
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClearableCount return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_3
    return v0
.end method

.method private isTransferComplete()Z
    .locals 2

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v1, "status"

    .line 433
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 435
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    goto :goto_0

    .line 442
    :cond_1
    goto :goto_1

    .line 441
    :catch_0
    move-exception v0

    .line 443
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private openCompleteTransfer()V
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 517
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    .line 518
    if-nez v1, :cond_0

    .line 519
    const-string v0, "BluetoothOppTransferHistory"

    const-string v1, "Error: Can not get data from db"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 522
    :cond_0
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    .line 523
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 526
    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    goto :goto_0

    .line 529
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 531
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    .line 534
    :goto_0
    return-void
.end method

.method private promptClearList()V
    .locals 3

    .line 370
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    .line 371
    const v1, 0x7f0e008a

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setTitle(I)V

    .line 372
    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 373
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;

    invoke-direct {v1, p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;Landroid/app/TctDialog;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 381
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;

    invoke-direct {v1, p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;Landroid/app/TctDialog;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 393
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    .line 394
    return-void
.end method

.method private updateNotificationWhenBtDisabled()V
    .locals 2

    .line 541
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "BluetoothOppTransferHistory"

    const-string v1, "Bluetooth is not enabled, update notification manually."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 548
    :cond_1
    return-void
.end method


# virtual methods
.method public onClickCSK()Z
    .locals 1

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 569
    return v1

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 573
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 574
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    if-eqz p1, :cond_0

    const-string p1, "BluetoothOppTransferHistory"

    const-string v0, "onConfigurationChanged ++"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 296
    const-string p1, "BluetoothOppTransferHistory"

    const-string v0, "History is already cleared, not clearing again"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f070092

    if-eq p1, v0, :cond_2

    const v0, 0x7f070094

    if-eq p1, v0, :cond_1

    .line 313
    const/4 p1, 0x0

    return p1

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 303
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 304
    return v1

    .line 307
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 309
    invoke-static {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 310
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 311
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 143
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothOppTransferHistory"

    const-string v2, "onCreate ++"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 148
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 149
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 150
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 151
    const v2, 0x7f04000b

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 152
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 155
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setContentView(I)V

    .line 156
    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    .line 157
    const v2, 0x7f070053

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuOptions:Ljava/util/ArrayList;

    .line 162
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e008d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuOptions:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e008c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v1, v0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.btopp.intent.extra.SHOW_ALL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direction"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 171
    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mDir:I

    .line 172
    if-nez v1, :cond_1

    .line 173
    const v1, 0x7f0e0067

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    const-string v1, "(direction == 0)"

    goto :goto_1

    .line 177
    :cond_1
    iget-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v1, :cond_2

    .line 178
    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_2
    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    const-string v1, "(direction == 1)"

    .line 186
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status >= \'200\' AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v2, :cond_3

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "visibility"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IS NULL OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " == \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    .line 188
    :cond_3
    move-object v7, v1

    .line 197
    :goto_2
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mChangeObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v9, "hint"

    const-string v10, "status"

    const-string v11, "total_bytes"

    const-string v12, "_data"

    const-string v13, "timestamp"

    const-string v14, "visibility"

    const-string v15, "destination"

    const-string v16, "direction"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 213
    const-string v2, "_id"

    if-eqz v1, :cond_4

    .line 214
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    .line 217
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    const v4, 0x7f090006

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-direct {v1, v0, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    .line 220
    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 222
    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 223
    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    :cond_4
    nop

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "status"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v7, "status == \'192\'"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferRunningCursor:Landroid/database/Cursor;

    .line 233
    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mChangeObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;

    if-eqz v2, :cond_5

    .line 234
    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    :cond_5
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 239
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_6

    .line 240
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->showProgress(Landroid/app/Activity;)V

    .line 242
    :cond_6
    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    .line 243
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 343
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz p2, :cond_2

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    .line 345
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 346
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 347
    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    .line 349
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 350
    const-string p3, "hint"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 349
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 351
    if-nez p2, :cond_0

    .line 352
    const p2, 0x7f0e0094

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 354
    :cond_0
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 356
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    .line 357
    iget-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz p3, :cond_1

    .line 358
    const/high16 p3, 0x7f0a0000

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 360
    :cond_1
    const p3, 0x7f0a0002

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 363
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 270
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 272
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mChangeObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ChangeObserver;

    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferRunningCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferRunningCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 323
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_1
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->dismissProgress()V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 339
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 499
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->V:Z

    if-eqz p1, :cond_0

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemClick: ContextMenu = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothOppTransferHistory"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    if-nez p1, :cond_1

    .line 503
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 504
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 505
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 507
    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenu:Z

    .line 508
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 553
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 558
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 559
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 9

    .line 598
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 665
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_6

    .line 666
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V

    .line 667
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/MenuBar;->updateMenuBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_3

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_6

    .line 602
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    .line 603
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 605
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTransferCursor.getColumnIndexOrThrow(BluetoothShare.FILENAME_HINT)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 608
    const-string v3, "hint"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    const-string v2, "BluetoothOppTransferHistory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 610
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 609
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 613
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 614
    const-string v4, "destination"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 615
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 616
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 617
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v3

    .line 618
    invoke-virtual {v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 623
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 624
    const-string v5, "direction"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 623
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 625
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 626
    const-string v6, "total_bytes"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 625
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 627
    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 629
    const/4 v8, 0x0

    if-ne v4, v0, :cond_3

    .line 630
    const v4, 0x7f0e0044

    new-array v0, v0, [Ljava/lang/Object;

    .line 632
    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    .line 630
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 634
    :cond_3
    const v4, 0x7f0e009f

    new-array v0, v0, [Ljava/lang/Object;

    .line 636
    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    .line 634
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 641
    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 640
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 642
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 643
    invoke-static {p0, v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v4, "timestamp"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 648
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 649
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 650
    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 651
    :cond_5
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 653
    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 654
    const-string v5, "detail_title"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v1, "detail_content"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "detail_complete_date"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, "detail_device_name"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "detail_size"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "detail_info"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    .line 673
    :cond_6
    :goto_3
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    .line 678
    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    .line 594
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f070093

    if-eq p1, v0, :cond_0

    .line 290
    const/4 p1, 0x0

    return p1

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V

    .line 288
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 277
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v0, :cond_0

    .line 278
    const v0, 0x7f070093

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->isTransferComplete()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 280
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 5

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 251
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuBar:Landroid/widget/MenuBar;

    const v1, 0x7f0e0090

    const v2, 0x7f0e008e

    const v3, 0x7f0e008f

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mMenuOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 257
    :goto_0
    return-void
.end method
