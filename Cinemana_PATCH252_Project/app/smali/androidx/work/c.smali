.class public final enum Landroidx/work/c;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Landroidx/work/c;

.field public static final enum s:Landroidx/work/c;

.field public static final enum t:Landroidx/work/c;

.field public static final enum u:Landroidx/work/c;

.field public static final enum v:Landroidx/work/c;

.field public static final synthetic w:[Landroidx/work/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/work/c;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/c;->r:Landroidx/work/c;

    .line 2
    new-instance v1, Landroidx/work/c;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/work/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/work/c;->s:Landroidx/work/c;

    .line 3
    new-instance v3, Landroidx/work/c;

    const-string v5, "UNMETERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/work/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/work/c;->t:Landroidx/work/c;

    .line 4
    new-instance v5, Landroidx/work/c;

    const-string v7, "NOT_ROAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/work/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/work/c;->u:Landroidx/work/c;

    .line 5
    new-instance v7, Landroidx/work/c;

    const-string v9, "METERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/work/c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/work/c;->v:Landroidx/work/c;

    const/4 v9, 0x5

    new-array v9, v9, [Landroidx/work/c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Landroidx/work/c;->w:[Landroidx/work/c;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/work/c;
    .locals 1

    .line 1
    const-class v0, Landroidx/work/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/c;

    return-object p0
.end method

.method public static values()[Landroidx/work/c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/c;->w:[Landroidx/work/c;

    invoke-virtual {v0}, [Landroidx/work/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/c;

    return-object v0
.end method
