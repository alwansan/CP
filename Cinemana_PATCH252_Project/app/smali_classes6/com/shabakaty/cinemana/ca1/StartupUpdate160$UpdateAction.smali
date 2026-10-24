.class final Lcom/shabakaty/cinemana/ca1/StartupUpdate160$UpdateAction;
.super Ljava/lang/Object;
.source "StartupUpdate160.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final activity:Landroid/app/Activity;

.field final dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$UpdateAction;->dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$UpdateAction;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$UpdateAction;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->finish()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$UpdateAction;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->openManual(Landroid/app/Activity;)V

    return-void
.end method
