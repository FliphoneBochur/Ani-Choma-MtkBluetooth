.class Lcom/android/bluetooth/opp/TestActivity$7;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/TestActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestActivity;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestActivity$7;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 340
    new-instance p1, Lcom/android/bluetooth/opp/TestActivity$7$1;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/opp/TestActivity$7$1;-><init>(Lcom/android/bluetooth/opp/TestActivity$7;)V

    .line 350
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 351
    return-void
.end method
