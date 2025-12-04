.class Lcom/android/bluetooth/util/BtInfoActivity$5;
.super Ljava/lang/Object;
.source "BtInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/util/BtInfoActivity;->showBTDialog()V
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

    .line 153
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$5;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$5;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-virtual {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->finish()V

    .line 157
    return-void
.end method
