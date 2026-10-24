.class public final Lcom/shabakaty/downloader/b54;
.super Ljava/lang/Object;
.source "SharedFlow.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/z44;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/z44<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 1
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    if-ne p3, v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/vy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/vy;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    return-object v0
.end method
