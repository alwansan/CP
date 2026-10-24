.class public final Lcom/shabakaty/downloader/u20;
.super Ljava/lang/Object;
.source "ClassDeserializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/u20$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/u20;

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/v20;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/or0;

.field public final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/u20$a;",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->d:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/u20;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/or0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u20;->a:Lcom/shabakaty/downloader/or0;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/u20$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/u20$b;-><init>(Lcom/shabakaty/downloader/u20;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/u20;->b:Lcom/shabakaty/downloader/tm1;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/u20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/n20;I)Lcom/shabakaty/downloader/q20;
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/u20;->b:Lcom/shabakaty/downloader/tm1;

    new-instance p3, Lcom/shabakaty/downloader/u20$a;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/u20$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/n20;)V

    invoke-interface {p0, p3}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/q20;

    return-object p0
.end method
