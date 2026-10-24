.class public final Lcom/shabakaty/downloader/hr0$a;
.super Ljava/lang/Object;
.source "DescriptorUtils.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nh0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/hr0;->a(Lcom/shabakaty/downloader/sz4;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/nh0$c;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/hr0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hr0$a<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hr0$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hr0$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hr0$a;->a:Lcom/shabakaty/downloader/hr0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/sz4;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->f()Ljava/util/Collection;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/sz4;

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/sz4;->a()Lcom/shabakaty/downloader/sz4;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
