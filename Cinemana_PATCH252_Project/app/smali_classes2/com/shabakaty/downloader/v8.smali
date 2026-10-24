.class public final Lcom/shabakaty/downloader/v8;
.super Ljava/lang/Object;
.source "AnnotationQualifiersFqNames.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/fi1;

.field public static final b:Lcom/shabakaty/downloader/fi1;

.field public static final c:Lcom/shabakaty/downloader/fi1;

.field public static final d:Lcom/shabakaty/downloader/fi1;

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/u8;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/a72;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/a72;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/v8;->a:Lcom/shabakaty/downloader/fi1;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "javax.annotation.meta.TypeQualifier"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/v8;->b:Lcom/shabakaty/downloader/fi1;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/v8;->c:Lcom/shabakaty/downloader/fi1;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/v8;->d:Lcom/shabakaty/downloader/fi1;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/shabakaty/downloader/u8;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/u8;->u:Lcom/shabakaty/downloader/u8;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/u8;->s:Lcom/shabakaty/downloader/u8;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/u8;->t:Lcom/shabakaty/downloader/u8;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 8
    sget-object v5, Lcom/shabakaty/downloader/u8;->w:Lcom/shabakaty/downloader/u8;

    const/4 v6, 0x3

    aput-object v5, v0, v6

    .line 9
    sget-object v5, Lcom/shabakaty/downloader/u8;->v:Lcom/shabakaty/downloader/u8;

    const/4 v6, 0x4

    aput-object v5, v0, v6

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/v8;->e:Ljava/util/List;

    .line 11
    sget-object v5, Lcom/shabakaty/downloader/ua2;->c:Lcom/shabakaty/downloader/fi1;

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/a72;

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/v13;

    sget-object v9, Lcom/shabakaty/downloader/u13;->t:Lcom/shabakaty/downloader/u13;

    .line 14
    invoke-direct {v8, v9, v2}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    .line 15
    invoke-direct {v7, v8, v0, v2}, Lcom/shabakaty/downloader/a72;-><init>(Lcom/shabakaty/downloader/v13;Ljava/util/Collection;Z)V

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/x93;

    invoke-direct {v0, v5, v7}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->j(Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/v8;->f:Ljava/util/Map;

    new-array v5, v4, [Lcom/shabakaty/downloader/x93;

    .line 18
    new-instance v7, Lcom/shabakaty/downloader/fi1;

    const-string v8, "javax.annotation.ParametersAreNullableByDefault"

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v8, Lcom/shabakaty/downloader/a72;

    .line 20
    new-instance v10, Lcom/shabakaty/downloader/v13;

    sget-object v11, Lcom/shabakaty/downloader/u13;->s:Lcom/shabakaty/downloader/u13;

    .line 21
    invoke-direct {v10, v11, v2}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    .line 22
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 23
    invoke-direct {v8, v10, v11, v2, v6}, Lcom/shabakaty/downloader/a72;-><init>(Lcom/shabakaty/downloader/v13;Ljava/util/Collection;ZI)V

    .line 24
    new-instance v10, Lcom/shabakaty/downloader/x93;

    invoke-direct {v10, v7, v8}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v5, v2

    .line 25
    new-instance v7, Lcom/shabakaty/downloader/fi1;

    const-string v8, "javax.annotation.ParametersAreNonnullByDefault"

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v8, Lcom/shabakaty/downloader/a72;

    .line 27
    new-instance v10, Lcom/shabakaty/downloader/v13;

    .line 28
    invoke-direct {v10, v9, v2}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    .line 29
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-direct {v8, v10, v1, v2, v6}, Lcom/shabakaty/downloader/a72;-><init>(Lcom/shabakaty/downloader/v13;Ljava/util/Collection;ZI)V

    .line 31
    new-instance v1, Lcom/shabakaty/downloader/x93;

    invoke-direct {v1, v7, v8}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v3

    .line 32
    invoke-static {v5}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v1

    .line 33
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 34
    sput-object v5, Lcom/shabakaty/downloader/v8;->g:Ljava/util/Map;

    new-array v0, v4, [Lcom/shabakaty/downloader/fi1;

    .line 35
    sget-object v1, Lcom/shabakaty/downloader/ua2;->e:Lcom/shabakaty/downloader/fi1;

    aput-object v1, v0, v2

    .line 36
    sget-object v1, Lcom/shabakaty/downloader/ua2;->f:Lcom/shabakaty/downloader/fi1;

    aput-object v1, v0, v3

    .line 37
    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->t([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/v8;->h:Ljava/util/Set;

    return-void
.end method
