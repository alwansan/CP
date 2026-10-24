.class public final Lcom/shabakaty/downloader/s82;
.super Ljava/lang/Object;
.source "JavaTypeResolver.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.lang.Class"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/s82;->a:Lcom/shabakaty/downloader/fi1;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qt4;
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/i82;->a:Lcom/shabakaty/downloader/du4;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/du4;->r:Lcom/shabakaty/downloader/du4;

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/st4;

    invoke-static {p0}, Lcom/shabakaty/downloader/wb4;->b(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/vb4;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    :goto_0
    return-object p1
.end method

.method public static b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;
    .locals 7

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 p1, p3, 0x2

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    move-object p2, p3

    :cond_1
    if-nez p2, :cond_2

    move-object v4, p3

    goto :goto_1

    .line 1
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    move-object v4, p1

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x12

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/i82;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/i82;-><init>(Lcom/shabakaty/downloader/du4;Lcom/shabakaty/downloader/l82;ZLjava/util/Set;Lcom/shabakaty/downloader/b74;I)V

    return-object p1
.end method
