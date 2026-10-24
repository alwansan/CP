.class public final Lcom/shabakaty/downloader/q05$b;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Lcom/shabakaty/downloader/q05$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q05$b;->a:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q05$a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q05$b;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/cu;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/cu;->i(Landroid/view/Display;)V

    return-void
.end method

.method public unregister()V
    .locals 0

    return-void
.end method
