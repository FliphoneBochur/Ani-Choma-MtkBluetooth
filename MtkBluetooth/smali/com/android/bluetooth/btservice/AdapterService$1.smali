.class Lcom/android/bluetooth/btservice/AdapterService$1;
.super Landroid/os/AsyncTask;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 519
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 522
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v0, "phonebook_access_permission"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 524
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v0, "message_access_permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 526
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v0, "sim_access_permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 527
    const/4 p1, 0x0

    return-object p1
.end method
