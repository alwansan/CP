.class public final Lcom/shabakaty/downloader/to;
.super Lcom/shabakaty/downloader/z94;
.source "specialBuiltinMembers.kt"


# static fields
.field public static final m:Lcom/shabakaty/downloader/to;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/to;

    invoke-direct {v0}, Lcom/shabakaty/downloader/to;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/z94;-><init>()V

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/xn1;
    .locals 3

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v2, "functionDescriptor.name"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/to;->b(Lcom/shabakaty/downloader/hw2;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/to$a;->r:Lcom/shabakaty/downloader/to$a;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/xn1;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/hw2;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z94;->f:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
