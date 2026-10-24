.class public final Lcom/shabakaty/downloader/da3$m;
.super Lcom/shabakaty/downloader/da3;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/da3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/da3<",
        "Lcom/shabakaty/downloader/sv2$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/da3$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/da3$m;

    invoke-direct {v0}, Lcom/shabakaty/downloader/da3$m;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/da3$m;->a:Lcom/shabakaty/downloader/da3$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/da3;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/sv2$c;

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/zr3;->i:Lcom/shabakaty/downloader/sv2$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "part"

    .line 3
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/sv2$a;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
