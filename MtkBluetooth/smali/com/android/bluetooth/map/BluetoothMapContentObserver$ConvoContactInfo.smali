.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConvoContactInfo"
.end annotation


# instance fields
.field public mContactColBtUid:I

.field public mContactColChatState:I

.field public mContactColContactId:I

.field public mContactColConvoId:I

.field public mContactColLastActive:I

.field public mContactColLastOnline:I

.field public mContactColName:I

.field public mContactColNickname:I

.field public mContactColPresenceState:I

.field public mContactColPresenceText:I

.field public mContactColPriority:I

.field public mContactColUci:I

.field public mConvoColConvoId:I

.field public mConvoColLastActivity:I

.field public mConvoColName:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mConvoColConvoId:I

    .line 550
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mConvoColLastActivity:I

    .line 551
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mConvoColName:I

    .line 554
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    .line 555
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    .line 556
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    .line 557
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    .line 558
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    .line 559
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    .line 560
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColContactId:I

    .line 561
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    .line 562
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    .line 563
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    .line 564
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    .line 565
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastOnline:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V
    .locals 0

    .line 548
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    return-void
.end method


# virtual methods
.method public setConvoColunms(Landroid/database/Cursor;)V
    .locals 3

    .line 574
    nop

    .line 575
    const-string v0, "convo_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    .line 576
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    .line 577
    nop

    .line 578
    const-string v1, "nickname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    .line 579
    const-string v2, "x_bt_uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    .line 580
    nop

    .line 581
    const-string v2, "chat_state"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    .line 582
    const-string v2, "x_bt_uci"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    .line 583
    nop

    .line 584
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    .line 585
    nop

    .line 586
    const-string v1, "last_active"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    .line 587
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    .line 588
    nop

    .line 589
    const-string v0, "presence_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    .line 590
    nop

    .line 591
    const-string v0, "status_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    .line 592
    nop

    .line 593
    const-string v0, "priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    .line 594
    nop

    .line 595
    const-string v0, "last_online"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastOnline:I

    .line 596
    return-void
.end method
