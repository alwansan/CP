.class public final Lcom/shabakaty/downloader/ic4;
.super Ljava/lang/Object;
.source "StateFlow.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;

.field public static final b:Lcom/shabakaty/downloader/j61;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "NONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/ic4;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/ic4;->b:Lcom/shabakaty/downloader/j61;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lcom/shabakaty/downloader/dw2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/dw2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/hc4;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    :goto_0
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/hc4;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b(Lcom/shabakaty/downloader/gc4;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/gc4<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-ge v0, p2, :cond_1

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 1
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/co;->s:Lcom/shabakaty/downloader/co;

    if-ne p3, v0, :cond_2

    return-object p0

    .line 2
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/b54;->a(Lcom/shabakaty/downloader/z44;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/dw2;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/dw2<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/dw2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/shabakaty/downloader/dw2;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
