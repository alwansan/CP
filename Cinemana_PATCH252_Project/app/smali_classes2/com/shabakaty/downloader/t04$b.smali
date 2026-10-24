.class public final synthetic Lcom/shabakaty/downloader/t04$b;
.super Lcom/shabakaty/downloader/co1;
.source "_Sequences.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t04;->F(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/l04<",
        "+TR;>;",
        "Ljava/util/Iterator<",
        "+TR;>;>;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/t04$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/t04$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/t04$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/t04$b;->r:Lcom/shabakaty/downloader/t04$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lcom/shabakaty/downloader/l04;

    const/4 v1, 0x1

    const-string v3, "iterator"

    const-string v4, "iterator()Ljava/util/Iterator;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/l04;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/l04;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
