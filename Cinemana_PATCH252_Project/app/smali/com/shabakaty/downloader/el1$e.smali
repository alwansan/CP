.class public Lcom/shabakaty/downloader/el1$e;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lcom/shabakaty/downloader/dq4$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/el1;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lcom/shabakaty/downloader/iv;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/el1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/el1$e;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/el1$e;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTransitionPause(Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    return-void
.end method
