.class public Landroidx/lifecycle/j$a;
.super Lcom/shabakaty/downloader/p21;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/j;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/lifecycle/j;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/j$a;->this$1:Landroidx/lifecycle/j;

    invoke-direct {p0}, Lcom/shabakaty/downloader/p21;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/j$a;->this$1:Landroidx/lifecycle/j;

    iget-object p1, p1, Landroidx/lifecycle/j;->this$0:Landroidx/lifecycle/i;

    invoke-virtual {p1}, Landroidx/lifecycle/i;->a()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/j$a;->this$1:Landroidx/lifecycle/j;

    iget-object p1, p1, Landroidx/lifecycle/j;->this$0:Landroidx/lifecycle/i;

    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()V

    return-void
.end method
