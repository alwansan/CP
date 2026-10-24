.class public Lcom/shabakaty/downloader/zd2$b;
.super Ljava/lang/Object;
.source "KotlinBuiltIns.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zd2;-><init>(Lcom/shabakaty/downloader/md4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/zd2$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zd2$b;->r:Lcom/shabakaty/downloader/zd2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/shabakaty/downloader/sf3;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/sf3;->values()[Lcom/shabakaty/downloader/sf3;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 5
    iget-object v7, p0, Lcom/shabakaty/downloader/zd2$b;->r:Lcom/shabakaty/downloader/zd2;

    .line 6
    iget-object v8, v6, Lcom/shabakaty/downloader/sf3;->r:Lcom/shabakaty/downloader/hw2;

    .line 7
    invoke-virtual {v8}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/zd2;->b(Lcom/shabakaty/downloader/zd2;Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v7

    .line 8
    iget-object v8, p0, Lcom/shabakaty/downloader/zd2$b;->r:Lcom/shabakaty/downloader/zd2;

    .line 9
    iget-object v9, v6, Lcom/shabakaty/downloader/sf3;->s:Lcom/shabakaty/downloader/hw2;

    .line 10
    invoke-virtual {v9}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/zd2;->b(Lcom/shabakaty/downloader/zd2;Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v8

    .line 11
    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Lcom/shabakaty/downloader/zd2$d;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/shabakaty/downloader/zd2$d;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/zd2$a;)V

    return-object v3
.end method
