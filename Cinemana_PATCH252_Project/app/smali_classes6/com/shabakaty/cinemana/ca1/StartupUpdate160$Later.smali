.class final Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;
.super Ljava/lang/Object;
.source "StartupUpdate160.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final activity:Landroid/app/Activity;

.field final checkbox:Landroid/widget/CheckBox;

.field final dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;->dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;->activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;->checkbox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->neverAgain(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Later;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->finish()V

    return-void
.end method
