.class public final Lcom/shabakaty/downloader/t31;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r8;


# static fields
.field public static final a:Lcom/shabakaty/downloader/t31;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/t31;

    invoke-direct {v0}, Lcom/shabakaty/downloader/t31;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/t31;->a:Lcom/shabakaty/downloader/t31;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No methods should be called on this descriptor. Only its presence matters"

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t31;->a()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public e()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/r8$a;->a(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t31;->a()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t31;->a()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[EnhancedType]"

    return-object v0
.end method
