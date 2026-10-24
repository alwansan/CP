.class public final Lcom/shabakaty/downloader/ve2$a;
.super Lcom/shabakaty/downloader/ve2;
.source "KotlinTypeRefiner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ve2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/ve2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ve2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ve2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ve2;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/mr2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/shabakaty/downloader/mr2;",
            ">(",
            "Lcom/shabakaty/downloader/q20;",
            "Lcom/shabakaty/downloader/rm1<",
            "+TS;>;)TS;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/py3$b;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/py3$b;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mr2;

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/nu2;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/shabakaty/downloader/ts4;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/g30;
    .locals 1

    const-string v0, "descriptor"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "classDescriptor.typeConstructor.supertypes"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qe2;

    return-object p1
.end method
