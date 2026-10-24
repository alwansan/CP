.class public Lcom/shabakaty/downloader/t81;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/t81$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/t81;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/t81$a;",
            "Lcom/shabakaty/downloader/pp1$f<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t81;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/t81;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/downloader/t81;->b:Lcom/shabakaty/downloader/t81;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/t81;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/t81;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/pp1$f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pp1$f<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t81;->a:Ljava/util/Map;

    new-instance v1, Lcom/shabakaty/downloader/t81$a;

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/pp1$f;->a:Lcom/shabakaty/downloader/es2;

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/pp1$f;->d:Lcom/shabakaty/downloader/pp1$e;

    .line 4
    iget v3, v3, Lcom/shabakaty/downloader/pp1$e;->s:I

    .line 5
    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/t81$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
