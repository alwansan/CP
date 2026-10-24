.class public Lcom/shabakaty/downloader/mi4$a;
.super Ljava/lang/Object;
.source "SurfaceRequest.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mi4;-><init>(Landroid/util/Size;Lcom/shabakaty/downloader/vt;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ar$a;

.field public final synthetic b:Lcom/shabakaty/downloader/pi2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mi4;Lcom/shabakaty/downloader/ar$a;Lcom/shabakaty/downloader/pi2;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/mi4$a;->a:Lcom/shabakaty/downloader/ar$a;

    iput-object p3, p0, Lcom/shabakaty/downloader/mi4$a;->b:Lcom/shabakaty/downloader/pi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of p1, p1, Lcom/shabakaty/downloader/mi4$e;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mi4$a;->b:Lcom/shabakaty/downloader/pi2;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/mi4$a;->a:Lcom/shabakaty/downloader/ar$a;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    move-result p1

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mi4$a;->a:Lcom/shabakaty/downloader/ar$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    return-void
.end method
