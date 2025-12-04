.class public Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;
.super Landroid/bluetooth/AlertActivity;
.source "BluetoothOppBtErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/bluetooth/AlertActivity;-><init>()V

    return-void
.end method

.method private createView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    nop

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 55
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "content"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 60
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->createView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 62
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e0027

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->setupAlert()V

    .line 64
    return-void
.end method
