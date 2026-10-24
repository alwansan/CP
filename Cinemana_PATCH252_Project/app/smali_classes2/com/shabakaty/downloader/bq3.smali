.class public final synthetic Lcom/shabakaty/downloader/bq3;
.super Lcom/shabakaty/downloader/bo1;
.source "reflectLambda.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/bo1;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/jr2;",
        "Lcom/shabakaty/downloader/qi3;",
        "Lcom/shabakaty/downloader/t64;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/bq3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/bq3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bq3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bq3;->r:Lcom/shabakaty/downloader/bq3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bo1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "loadFunction"

    return-object v0
.end method

.method public final getOwner()Lcom/shabakaty/downloader/nc2;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/jr2;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;"

    return-object v0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/jr2;

    check-cast p2, Lcom/shabakaty/downloader/qi3;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/jr2;->f(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/t64;

    move-result-object p1

    return-object p1
.end method
