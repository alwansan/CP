.class public abstract Lcom/shabakaty/downloader/tt4;
.super Ljava/lang/Object;
.source "TypeSubstitution.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/tt4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tt4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tt4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tt4;->a:Lcom/shabakaty/downloader/tt4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
.end method

.method public e()Z
    .locals 0

    instance-of p0, p0, Lcom/shabakaty/downloader/tt4$a;

    return p0
.end method

.method public f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
