.class Lcom/android/bluetooth/util/BtInfoActivity$3;
.super Ljava/lang/Object;
.source "BtInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 122
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$3;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity$3;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {v0}, Lcom/android/bluetooth/util/BtInfoActivity;->access$200(Lcom/android/bluetooth/util/BtInfoActivity;)V

    .line 126
    return-void
.end method
