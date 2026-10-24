.class public abstract Lcom/shabakaty/downloader/lj2;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lj2$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/lj2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/shabakaty/downloader/rh2;",
            ":",
            "Lcom/shabakaty/downloader/s35;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/lj2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mj2;

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/s35;

    invoke-interface {v1}, Lcom/shabakaty/downloader/s35;->getViewModelStore()Lcom/shabakaty/downloader/r35;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/mj2;-><init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r35;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
