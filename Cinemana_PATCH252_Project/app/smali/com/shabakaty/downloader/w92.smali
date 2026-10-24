.class public final Lcom/shabakaty/downloader/w92;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/shabakaty/downloader/m31;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w92$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/m31<",
        "Lcom/shabakaty/downloader/w92;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/w92$a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/l43<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/downloader/nz4<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:Lcom/shabakaty/downloader/l43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l43<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/w92$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/w92$a;-><init>(Lcom/shabakaty/downloader/v92;)V

    sput-object v0, Lcom/shabakaty/downloader/w92;->e:Lcom/shabakaty/downloader/w92$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/w92;->a:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/w92;->b:Ljava/util/Map;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/s92;->a:Lcom/shabakaty/downloader/s92;

    iput-object v2, p0, Lcom/shabakaty/downloader/w92;->c:Lcom/shabakaty/downloader/l43;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/shabakaty/downloader/w92;->d:Z

    .line 6
    const-class v2, Ljava/lang/String;

    sget-object v3, Lcom/shabakaty/downloader/t92;->a:Lcom/shabakaty/downloader/t92;

    .line 7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lcom/shabakaty/downloader/u92;->a:Lcom/shabakaty/downloader/u92;

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v2, Ljava/util/Date;

    sget-object v3, Lcom/shabakaty/downloader/w92;->e:Lcom/shabakaty/downloader/w92$a;

    .line 13
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w92;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/w92;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
