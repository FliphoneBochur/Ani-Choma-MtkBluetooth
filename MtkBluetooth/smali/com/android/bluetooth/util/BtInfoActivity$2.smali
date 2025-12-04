.class Lcom/android/bluetooth/util/BtInfoActivity$2;
.super Landroid/os/Handler;
.source "BtInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/util/BtInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/util/BtInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/util/BtInfoActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$2;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 118
    return-void
.end method
