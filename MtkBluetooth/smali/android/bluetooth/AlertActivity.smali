.class public abstract Landroid/bluetooth/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field protected mAlertBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 76
    const-class v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 80
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    .line 82
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 84
    return v1
.end method


# virtual methods
.method protected changeButtonEnabled(IZ)V
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/bluetooth/AlertActivity;->mAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method protected changeButtonText(ILjava/lang/CharSequence;)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/bluetooth/AlertActivity;->mAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method protected changeButtonVisibility(II)V
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/bluetooth/AlertActivity;->mAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    return-void
.end method

.method protected changeIconAttribute(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/bluetooth/AlertActivity;->mAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 95
    return-void
.end method

.method protected changeTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/bluetooth/AlertActivity;->mAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 71
    invoke-static {p0, p1}, Landroid/bluetooth/AlertActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/bluetooth/AlertActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/bluetooth/AlertActivity;->finish()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/bluetooth/AlertActivity;->requestWindowFeature(I)Z

    .line 50
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/bluetooth/AlertActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    iget-object p1, p0, Landroid/bluetooth/AlertActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroid/bluetooth/AlertActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/bluetooth/AlertActivity;->finish()V

    .line 60
    :cond_0
    return-void
.end method

.method protected setupAlert()V
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/bluetooth/AlertActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/AlertActivity;->mAlert:Landroid/app/AlertDialog;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 90
    return-void
.end method
