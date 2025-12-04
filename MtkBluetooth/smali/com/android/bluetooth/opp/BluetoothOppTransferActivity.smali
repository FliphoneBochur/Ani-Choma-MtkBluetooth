.class public Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.super Landroid/bluetooth/AlertActivity;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final DIALOG_RECEIVE_COMPLETE_FAIL:I = 0x2

.field public static final DIALOG_RECEIVE_COMPLETE_SUCCESS:I = 0x1

.field public static final DIALOG_RECEIVE_ONGOING:I = 0x0

.field public static final DIALOG_SEND_COMPLETE_FAIL:I = 0x5

.field public static final DIALOG_SEND_COMPLETE_SUCCESS:I = 0x4

.field public static final DIALOG_SEND_ONGOING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferActivity"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mIsComplete:Z

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mLine5View:Landroid/widget/TextView;

.field private mNeedUpdateButton:Z

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

.field private mPercentView:Landroid/widget/TextView;

.field private mProgressTransfer:Landroid/widget/ProgressBar;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/bluetooth/AlertActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 240
    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    .line 243
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 247
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private customizeViewContent()V
    .locals 13

    .line 258
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const v1, 0x7f0e003d

    const/16 v2, 0x8

    const v3, 0x7f07006a

    const v4, 0x7f070068

    const v5, 0x7f070066

    const v6, 0x7f070065

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_8

    if-ne v0, v8, :cond_0

    goto/16 :goto_4

    .line 277
    :cond_0
    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v0, v11, :cond_5

    if-ne v0, v9, :cond_1

    goto/16 :goto_2

    .line 296
    :cond_1
    const v1, 0x7f0e003a

    if-ne v0, v10, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    const/16 v9, 0x1ee

    const v10, 0x7f0e0039

    if-ne v0, v9, :cond_3

    .line 298
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 299
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->deviceHasNoSdCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    const v0, 0x7f0e002a

    goto :goto_0

    .line 301
    :cond_2
    const v0, 0x7f0e0029

    .line 302
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 305
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v1, v0, v7

    invoke-virtual {p0, v10, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f0e002b

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    .line 309
    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    goto :goto_1

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 316
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v0, v7

    invoke-virtual {p0, v10, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 319
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    .line 320
    invoke-static {p0, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 319
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 325
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 326
    :cond_4
    const/4 v9, 0x5

    if-ne v0, v9, :cond_b

    .line 327
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f0e0098

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0e0099

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 334
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    .line 335
    invoke-static {p0, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 334
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 339
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 279
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0e009a

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v12, v12, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v12, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 283
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v0, v7

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f0e009b

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    aput-object v4, v1, v7

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    .line 287
    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 290
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v1, v11, :cond_6

    .line 291
    const v0, 0x7f0e009c

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 292
    :cond_6
    if-ne v1, v9, :cond_7

    .line 293
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 260
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0e003c

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 264
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v0, v7

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f0e003e

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    .line 268
    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 271
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v1, :cond_9

    .line 272
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 273
    :cond_9
    if-ne v1, v8, :cond_a

    .line 274
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 343
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    :cond_c
    return-void
.end method

.method private displayWhichDialog()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    .line 183
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v2

    .line 186
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 187
    if-eqz v2, :cond_1

    .line 188
    if-eqz v1, :cond_0

    .line 190
    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 191
    :cond_0
    if-nez v1, :cond_5

    .line 192
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 194
    :cond_1
    if-nez v2, :cond_5

    .line 195
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 197
    :cond_2
    if-nez v0, :cond_5

    .line 198
    if-eqz v2, :cond_4

    .line 199
    if-eqz v1, :cond_3

    .line 200
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 202
    :cond_3
    if-nez v1, :cond_5

    .line 203
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 205
    :cond_4
    if-nez v2, :cond_5

    .line 206
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    .line 210
    :cond_5
    :goto_0
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->V:Z

    if-eqz v3, :cond_6

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WhichDialog/dir/isComplete/failOrSuccess"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppTransferActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_6
    return-void
.end method

.method private setUpDialog()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0045

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0043

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 223
    :cond_1
    const/4 v1, 0x2

    const v2, 0x1010355

    if-ne v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e003b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 226
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 228
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 219
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0041

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0037

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setupAlert()V

    .line 234
    return-void
.end method

.method private updateButton()V
    .locals 6

    .line 444
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 445
    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeButtonVisibility(II)V

    .line 446
    const v0, 0x7f0e0043

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeButtonText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 449
    :cond_0
    const/4 v4, 0x2

    const v5, 0x1010355

    if-ne v0, v4, :cond_1

    .line 450
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeIconAttribute(I)V

    .line 451
    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeButtonVisibility(II)V

    .line 452
    const v0, 0x7f0e003b

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeButtonText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 455
    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 456
    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeButtonVisibility(II)V

    .line 457
    const v0, 0x7f0e009e

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeButtonText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 461
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeIconAttribute(I)V

    .line 462
    const v0, 0x7f0e0097

    .line 464
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {p0, v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->changeButtonText(ILjava/lang/CharSequence;)V

    .line 466
    :cond_3
    :goto_0
    return-void
.end method

.method private updateProgressbar()V
    .locals 8

    .line 398
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 399
    const-string v1, "BluetoothOppTransferActivity"

    if-nez v0, :cond_1

    .line 400
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->V:Z

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "Error: Can not get data from db"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 409
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 410
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->V:Z

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentBytes: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mTotalBytes: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:J

    mul-long/2addr v4, v2

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v6, v6, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:J

    mul-long/2addr v4, v2

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    div-long/2addr v4, v1

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    if-eqz v0, :cond_5

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    if-eqz v0, :cond_4

    .line 431
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    .line 434
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 435
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateButton()V

    .line 436
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    .line 438
    :cond_5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 350
    const/4 p1, -0x2

    const-string v0, "notification"

    const/4 v1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto/16 :goto_3

    .line 352
    :cond_0
    iget p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne p1, v1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object p2, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 358
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget p2, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_3

    .line 363
    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_8

    .line 364
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 365
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget p2, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 371
    :cond_2
    iget p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 p2, 0x3

    if-eqz p1, :cond_5

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 385
    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    .line 387
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_3

    .line 385
    :cond_4
    :goto_0
    goto :goto_3

    .line 373
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    nop

    .line 376
    iget p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x0

    if-nez p1, :cond_6

    .line 377
    const p1, 0x7f0e002e

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 378
    :cond_6
    if-ne p1, p2, :cond_7

    .line 379
    const p1, 0x7f0e0031

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 378
    :cond_7
    const-string p1, ""

    .line 381
    :goto_2
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget p2, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 391
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 392
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 133
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    .line 137
    new-instance p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 138
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 139
    if-nez p1, :cond_1

    .line 140
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->V:Z

    if-eqz p1, :cond_0

    .line 141
    const-string p1, "BluetoothOppTransferActivity"

    const-string v0, "Error: Can not get data from db"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 144
    return-void

    .line 147
    :cond_1
    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    .line 149
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 152
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez p1, :cond_2

    .line 153
    new-instance p1, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    .line 154
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    :cond_2
    iget p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    .line 160
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 163
    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setUpDialog()V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 172
    const-string v0, "BluetoothOppTransferActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 178
    :cond_0
    invoke-super {p0}, Landroid/bluetooth/AlertActivity;->onDestroy()V

    .line 179
    return-void
.end method
