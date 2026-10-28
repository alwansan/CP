.class public final enum Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
.super Ljava/lang/Enum;
.source "LocalAccountStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalAccountStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

.field public static final enum FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

.field public static final enum PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

.field public static final enum STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

.field public static final enum SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

.field public static final enum WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

.field public static final enum WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;


# direct methods
.method private static synthetic $values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const-string v1, "FAVORITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const-string v1, "WATCH_LATER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const-string v1, "WATCHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const-string v1, "SUBSCRIPTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const-string v1, "PROGRESS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const-string v1, "STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->$values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->$VALUES:[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    .locals 1

    const-class v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->$VALUES:[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0}, [Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object v0
.end method
