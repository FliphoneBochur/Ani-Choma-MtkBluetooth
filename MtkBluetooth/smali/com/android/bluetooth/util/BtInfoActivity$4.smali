.class Lcom/android/bluetooth/util/BtInfoActivity$4;
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

    .line 160
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$4;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 163
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/android/bluetooth/util/BtInfoActivity$4;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/bluetooth/util/BtInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method
