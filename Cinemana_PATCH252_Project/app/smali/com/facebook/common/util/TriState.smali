.class public final enum Lcom/facebook/common/util/TriState;
.super Ljava/lang/Enum;
.source "TriState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/common/util/TriState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/facebook/common/util/TriState;

.field public static final enum s:Lcom/facebook/common/util/TriState;

.field public static final enum t:Lcom/facebook/common/util/TriState;

.field public static final synthetic u:[Lcom/facebook/common/util/TriState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/facebook/common/util/TriState;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/util/TriState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TriState;->r:Lcom/facebook/common/util/TriState;

    .line 2
    new-instance v1, Lcom/facebook/common/util/TriState;

    const-string v3, "NO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/common/util/TriState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/common/util/TriState;->s:Lcom/facebook/common/util/TriState;

    .line 3
    new-instance v3, Lcom/facebook/common/util/TriState;

    const-string v5, "UNSET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/common/util/TriState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/common/util/TriState;->t:Lcom/facebook/common/util/TriState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/common/util/TriState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/facebook/common/util/TriState;->u:[Lcom/facebook/common/util/TriState;

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

.method public static f(Z)Lcom/facebook/common/util/TriState;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/facebook/common/util/TriState;->r:Lcom/facebook/common/util/TriState;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/facebook/common/util/TriState;->s:Lcom/facebook/common/util/TriState;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/util/TriState;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/common/util/TriState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/common/util/TriState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/common/util/TriState;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/common/util/TriState;->u:[Lcom/facebook/common/util/TriState;

    invoke-virtual {v0}, [Lcom/facebook/common/util/TriState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/util/TriState;

    return-object v0
.end method
