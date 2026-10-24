.class public final Lcom/shabakaty/downloader/pt4$c;
.super Lcom/shabakaty/downloader/af2;
.source "typeParameterUtils.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/pt4;->b(Lcom/shabakaty/downloader/h30;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/qm0;",
        "Lcom/shabakaty/downloader/l04<",
        "+",
        "Lcom/shabakaty/downloader/kt4;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/pt4$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/pt4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pt4$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pt4$c;->r:Lcom/shabakaty/downloader/pt4$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qm0;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/rq;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object p1

    const-string v0, "it as CallableDescriptor).typeParameters"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    return-object p1
.end method
