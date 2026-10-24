.class public final enum Lcom/shabakaty/usermanagement/data/model/Gender;
.super Ljava/lang/Enum;
.source "Gender.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/usermanagement/data/model/Gender;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/model/Gender;",
        "",
        "Ljava/io/Serializable;",
        "<init>",
        "(Ljava/lang/String;I)V",
        "MALE",
        "FEMALE",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shabakaty/usermanagement/data/model/Gender;

.field public static final enum FEMALE:Lcom/shabakaty/usermanagement/data/model/Gender;

.field public static final enum MALE:Lcom/shabakaty/usermanagement/data/model/Gender;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/usermanagement/data/model/Gender;

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/Gender;

    const-string v2, "MALE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/Gender;->MALE:Lcom/shabakaty/usermanagement/data/model/Gender;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/Gender;

    const-string v2, "FEMALE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/Gender;->FEMALE:Lcom/shabakaty/usermanagement/data/model/Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/usermanagement/data/model/Gender;->$VALUES:[Lcom/shabakaty/usermanagement/data/model/Gender;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/usermanagement/data/model/Gender;
    .locals 1

    const-class v0, Lcom/shabakaty/usermanagement/data/model/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/usermanagement/data/model/Gender;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/usermanagement/data/model/Gender;
    .locals 1

    sget-object v0, Lcom/shabakaty/usermanagement/data/model/Gender;->$VALUES:[Lcom/shabakaty/usermanagement/data/model/Gender;

    invoke-virtual {v0}, [Lcom/shabakaty/usermanagement/data/model/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/usermanagement/data/model/Gender;

    return-object v0
.end method
