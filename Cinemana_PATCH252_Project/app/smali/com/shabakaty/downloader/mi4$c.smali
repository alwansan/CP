.class public Lcom/shabakaty/downloader/mi4$c;
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
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/pi2;

.field public final synthetic b:Lcom/shabakaty/downloader/ar$a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mi4;Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/mi4$c;->a:Lcom/shabakaty/downloader/pi2;

    iput-object p3, p0, Lcom/shabakaty/downloader/mi4$c;->b:Lcom/shabakaty/downloader/ar$a;

    iput-object p4, p0, Lcom/shabakaty/downloader/mi4$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mi4$c;->b:Lcom/shabakaty/downloader/ar$a;

    new-instance v2, Lcom/shabakaty/downloader/mi4$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shabakaty/downloader/mi4$c;->c:Ljava/lang/String;

    const-string v5, " cancelled."

    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/shabakaty/downloader/mi4$e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    move-result p1

    .line 3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/mi4$c;->b:Lcom/shabakaty/downloader/ar$a;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/Surface;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mi4$c;->a:Lcom/shabakaty/downloader/pi2;

    iget-object v0, p0, Lcom/shabakaty/downloader/mi4$c;->b:Lcom/shabakaty/downloader/ar$a;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ko1;->e(Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;)V

    return-void
.end method
