.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardPhoneNumberTranslationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSelectedPhonebookNameList(IZII[BLjava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 366
    const/16 p2, 0x2c

    const/16 p3, 0x70

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 367
    const/16 p2, 0x3b

    const/16 p3, 0x77

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 368
    return-object p1
.end method
