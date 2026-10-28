.class final Lcom/shabakaty/cinemana/local/LocalAccountStore$State;
.super Ljava/lang/Object;
.source "LocalAccountStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalAccountStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field avatar:[B

.field config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field inbox:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;"
        }
    .end annotation
.end field

.field known:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field lists:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u062d\u0633\u0627\u0628\u064a"

    iput-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->name:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->avatar:[B

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->config:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->known:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->inbox:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v1

    array-length v2, v1

    :goto_2f
    if-ge v0, v2, :cond_40

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$State;->lists:Ljava/util/EnumMap;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_40
    return-void
.end method
