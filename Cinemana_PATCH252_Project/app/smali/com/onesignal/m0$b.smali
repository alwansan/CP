.class public final enum Lcom/onesignal/m0$b;
.super Ljava/lang/Enum;
.source "OSTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/m0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/onesignal/m0$b;

.field public static final enum t:Lcom/onesignal/m0$b;

.field public static final enum u:Lcom/onesignal/m0$b;

.field public static final enum v:Lcom/onesignal/m0$b;

.field public static final enum w:Lcom/onesignal/m0$b;

.field public static final synthetic x:[Lcom/onesignal/m0$b;


# instance fields
.field public r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/onesignal/m0$b;

    const-string v1, "GREATER_THAN"

    const/4 v2, 0x0

    const-string v3, "greater"

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v1, Lcom/onesignal/m0$b;

    const-string v3, "LESS_THAN"

    const/4 v4, 0x1

    const-string v5, "less"

    invoke-direct {v1, v3, v4, v5}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    new-instance v3, Lcom/onesignal/m0$b;

    const-string v5, "EQUAL_TO"

    const/4 v6, 0x2

    const-string v7, "equal"

    invoke-direct {v3, v5, v6, v7}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/onesignal/m0$b;->s:Lcom/onesignal/m0$b;

    .line 4
    new-instance v5, Lcom/onesignal/m0$b;

    const-string v7, "NOT_EQUAL_TO"

    const/4 v8, 0x3

    const-string v9, "not_equal"

    invoke-direct {v5, v7, v8, v9}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/onesignal/m0$b;->t:Lcom/onesignal/m0$b;

    .line 5
    new-instance v7, Lcom/onesignal/m0$b;

    const-string v9, "LESS_THAN_OR_EQUAL_TO"

    const/4 v10, 0x4

    const-string v11, "less_or_equal"

    invoke-direct {v7, v9, v10, v11}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    new-instance v9, Lcom/onesignal/m0$b;

    const-string v11, "GREATER_THAN_OR_EQUAL_TO"

    const/4 v12, 0x5

    const-string v13, "greater_or_equal"

    invoke-direct {v9, v11, v12, v13}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    new-instance v11, Lcom/onesignal/m0$b;

    const-string v13, "EXISTS"

    const/4 v14, 0x6

    const-string v15, "exists"

    invoke-direct {v11, v13, v14, v15}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/onesignal/m0$b;->u:Lcom/onesignal/m0$b;

    .line 8
    new-instance v13, Lcom/onesignal/m0$b;

    const-string v15, "NOT_EXISTS"

    const/4 v14, 0x7

    const-string v12, "not_exists"

    invoke-direct {v13, v15, v14, v12}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/onesignal/m0$b;->v:Lcom/onesignal/m0$b;

    .line 9
    new-instance v12, Lcom/onesignal/m0$b;

    const-string v15, "CONTAINS"

    const/16 v14, 0x8

    const-string v10, "in"

    invoke-direct {v12, v15, v14, v10}, Lcom/onesignal/m0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/onesignal/m0$b;->w:Lcom/onesignal/m0$b;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/onesignal/m0$b;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 10
    sput-object v10, Lcom/onesignal/m0$b;->x:[Lcom/onesignal/m0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/onesignal/m0$b;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/m0$b;
    .locals 1

    .line 1
    const-class v0, Lcom/onesignal/m0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/m0$b;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/m0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/m0$b;->x:[Lcom/onesignal/m0$b;

    invoke-virtual {v0}, [Lcom/onesignal/m0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/m0$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onesignal/m0$b;->r:Ljava/lang/String;

    return-object v0
.end method
