.class public Lcom/shabakaty/downloader/ye2;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ye2$b;,
        Lcom/shabakaty/downloader/ye2$a;
    }
.end annotation


# static fields
.field public static a:Lcom/shabakaty/downloader/ye2$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ye2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ye2;->a:Lcom/shabakaty/downloader/ye2$b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ye2;->a:Lcom/shabakaty/downloader/ye2$b;

    check-cast v0, Lcom/shabakaty/downloader/ye2$a;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ye2$a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ye2;->a:Lcom/shabakaty/downloader/ye2$b;

    check-cast v0, Lcom/shabakaty/downloader/ye2$a;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ye2$a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ye2;->a:Lcom/shabakaty/downloader/ye2$b;

    check-cast v0, Lcom/shabakaty/downloader/ye2$a;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ye2$a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
