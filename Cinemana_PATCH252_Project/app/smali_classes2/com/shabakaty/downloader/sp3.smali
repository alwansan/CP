.class public final Lcom/shabakaty/downloader/sp3;
.super Lcom/shabakaty/downloader/up3;
.source "ReflectJavaPrimitiveType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/t72;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/g62;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/up3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sp3;->a:Ljava/lang/Class;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object p1, p0, Lcom/shabakaty/downloader/sp3;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public X()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sp3;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/sf3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sp3;->a:Ljava/lang/Class;

    .line 2
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sp3;->a:Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/sb2;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/sb2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sb2;->n()Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/g62;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sp3;->b:Ljava/util/Collection;

    return-object v0
.end method
