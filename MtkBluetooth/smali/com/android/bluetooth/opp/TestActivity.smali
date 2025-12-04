.class public Lcom/android/bluetooth/opp/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# instance fields
.field public ackRecordListener:Landroid/view/View$OnClickListener;

.field public currentInsert:Ljava/lang/String;

.field public deleteAllRecordListener:Landroid/view/View$OnClickListener;

.field public deleteRecordListener:Landroid/view/View$OnClickListener;

.field public insertRecordListener:Landroid/view/View$OnClickListener;

.field mAckView:Landroid/widget/EditText;

.field mAddressView:Landroid/widget/EditText;

.field public mCurrentByte:I

.field mDeleteView:Landroid/widget/EditText;

.field mInsertView:Landroid/widget/EditText;

.field mMediaView:Landroid/widget/EditText;

.field mServer:Lcom/android/bluetooth/opp/TestTcpServer;

.field mUpdateView:Landroid/widget/EditText;

.field public notifyTcpServerListener:Landroid/view/View$OnClickListener;

.field public startTcpServerListener:Landroid/view/View$OnClickListener;

.field public updateRecordListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/TestActivity;->mCurrentByte:I

    .line 216
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$1;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->insertRecordListener:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$2;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->deleteRecordListener:Landroid/view/View$OnClickListener;

    .line 287
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$3;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->updateRecordListener:Landroid/view/View$OnClickListener;

    .line 304
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$4;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$4;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->ackRecordListener:Landroid/view/View$OnClickListener;

    .line 320
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$5;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$5;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->deleteAllRecordListener:Landroid/view/View$OnClickListener;

    .line 328
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$6;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$6;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->startTcpServerListener:Landroid/view/View$OnClickListener;

    .line 337
    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$7;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$7;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->notifyTcpServerListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/TestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/TestActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    .line 112
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Get share intent with Uri "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mimetype is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothOpp"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_0
    const p1, 0x7f09001d

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/TestActivity;->setContentView(I)V

    .line 144
    const p1, 0x7f070060

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 145
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 146
    const v1, 0x7f070096

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 148
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 150
    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 151
    const v4, 0x7f070097

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/bluetooth/opp/TestActivity;->mUpdateView:Landroid/widget/EditText;

    .line 152
    const v4, 0x7f070022

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/bluetooth/opp/TestActivity;->mAckView:Landroid/widget/EditText;

    .line 153
    const v4, 0x7f070047

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/bluetooth/opp/TestActivity;->mDeleteView:Landroid/widget/EditText;

    .line 154
    const v4, 0x7f070061

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/bluetooth/opp/TestActivity;->mInsertView:Landroid/widget/EditText;

    .line 156
    const v4, 0x7f070029

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/bluetooth/opp/TestActivity;->mAddressView:Landroid/widget/EditText;

    .line 157
    const v4, 0x7f07006e

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/bluetooth/opp/TestActivity;->mMediaView:Landroid/widget/EditText;

    .line 159
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestActivity;->insertRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p1, p0, Lcom/android/bluetooth/opp/TestActivity;->deleteRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/android/bluetooth/opp/TestActivity;->updateRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p1, p0, Lcom/android/bluetooth/opp/TestActivity;->ackRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/android/bluetooth/opp/TestActivity;->deleteAllRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const p1, 0x7f070080

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->startTcpServerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const p1, 0x7f070075

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->notifyTcpServerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method
