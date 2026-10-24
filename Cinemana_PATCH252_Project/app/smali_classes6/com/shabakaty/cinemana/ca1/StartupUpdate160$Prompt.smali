.class final Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Prompt;
.super Ljava/lang/Object;
.source "StartupUpdate160.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final activity:Landroid/app/Activity;

.field final update:Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Prompt;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Prompt;->update:Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Prompt;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/StartupUpdate160$Prompt;->update:Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->showPrompt(Landroid/app/Activity;Lcom/shabakaty/cinemana/ca1/AppUpdater133$Update;)V

    return-void
.end method
