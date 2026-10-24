.class public final Lcom/shabakaty/downloader/e83;
.super Lcom/shabakaty/downloader/de0$a;
.source "OptionalConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e83$a;
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/de0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e83;

    invoke-direct {v0}, Lcom/shabakaty/downloader/e83;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/e83;->a:Lcom/shabakaty/downloader/de0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/de0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/de0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/shabakaty/downloader/lt3;",
            ")",
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 4
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    invoke-virtual {p3, p1, p2}, Lcom/shabakaty/downloader/lt3;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/e83$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/e83$a;-><init>(Lcom/shabakaty/downloader/de0;)V

    return-object p2
.end method
