.class public final Lcom/shabakaty/downloader/zm4;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;

.field public static final b:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/me0$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "Lcom/shabakaty/downloader/ym4<",
            "*>;",
            "Lcom/shabakaty/downloader/me0$b;",
            "Lcom/shabakaty/downloader/ym4<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "Lcom/shabakaty/downloader/en4;",
            "Lcom/shabakaty/downloader/me0$b;",
            "Lcom/shabakaty/downloader/en4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "NO_THREAD_ELEMENTS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/zm4;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/zm4$a;->r:Lcom/shabakaty/downloader/zm4$a;

    sput-object v0, Lcom/shabakaty/downloader/zm4;->b:Lcom/shabakaty/downloader/hn1;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/zm4$b;->r:Lcom/shabakaty/downloader/zm4$b;

    sput-object v0, Lcom/shabakaty/downloader/zm4;->c:Lcom/shabakaty/downloader/hn1;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/zm4$c;->r:Lcom/shabakaty/downloader/zm4$c;

    sput-object v0, Lcom/shabakaty/downloader/zm4;->d:Lcom/shabakaty/downloader/hn1;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zm4;->a:Lcom/shabakaty/downloader/j61;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/en4;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/en4;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/en4;->b:[Lcom/shabakaty/downloader/ym4;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/en4;->b:[Lcom/shabakaty/downloader/ym4;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/shabakaty/downloader/en4;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, p0, v2}, Lcom/shabakaty/downloader/ym4;->o(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/zm4;->c:Lcom/shabakaty/downloader/hn1;

    invoke-interface {p0, v0, v1}, Lcom/shabakaty/downloader/me0;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ym4;

    .line 7
    invoke-interface {v0, p0, p1}, Lcom/shabakaty/downloader/ym4;->o(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static final b(Lcom/shabakaty/downloader/me0;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/zm4;->b:Lcom/shabakaty/downloader/hn1;

    invoke-interface {p0, v0, v1}, Lcom/shabakaty/downloader/me0;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/zm4;->b(Lcom/shabakaty/downloader/me0;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lcom/shabakaty/downloader/zm4;->a:Lcom/shabakaty/downloader/j61;

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/en4;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/en4;-><init>(Lcom/shabakaty/downloader/me0;I)V

    sget-object p1, Lcom/shabakaty/downloader/zm4;->d:Lcom/shabakaty/downloader/hn1;

    invoke-interface {p0, v0, p1}, Lcom/shabakaty/downloader/me0;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 5
    :cond_2
    check-cast p1, Lcom/shabakaty/downloader/ym4;

    .line 6
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ym4;->j(Lcom/shabakaty/downloader/me0;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
