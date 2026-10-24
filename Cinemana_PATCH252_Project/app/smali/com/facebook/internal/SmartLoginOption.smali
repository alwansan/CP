.class public final enum Lcom/facebook/internal/SmartLoginOption;
.super Ljava/lang/Enum;
.source "SmartLoginOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/SmartLoginOption;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/facebook/internal/SmartLoginOption;

.field public static final enum t:Lcom/facebook/internal/SmartLoginOption;

.field public static final u:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic v:[Lcom/facebook/internal/SmartLoginOption;


# instance fields
.field public final r:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/facebook/internal/SmartLoginOption;

    const-string v1, "None"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/internal/SmartLoginOption;-><init>(Ljava/lang/String;IJ)V

    .line 2
    new-instance v1, Lcom/facebook/internal/SmartLoginOption;

    const-string v3, "Enabled"

    const/4 v4, 0x1

    const-wide/16 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/facebook/internal/SmartLoginOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/facebook/internal/SmartLoginOption;->s:Lcom/facebook/internal/SmartLoginOption;

    .line 3
    new-instance v3, Lcom/facebook/internal/SmartLoginOption;

    const-string v5, "RequireConfirm"

    const/4 v6, 0x2

    const-wide/16 v7, 0x2

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/facebook/internal/SmartLoginOption;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/facebook/internal/SmartLoginOption;->t:Lcom/facebook/internal/SmartLoginOption;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/internal/SmartLoginOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/facebook/internal/SmartLoginOption;->v:[Lcom/facebook/internal/SmartLoginOption;

    .line 5
    const-class v0, Lcom/facebook/internal/SmartLoginOption;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/SmartLoginOption;->u:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-wide p3, p0, Lcom/facebook/internal/SmartLoginOption;->r:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/SmartLoginOption;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/internal/SmartLoginOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/SmartLoginOption;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/SmartLoginOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/SmartLoginOption;->v:[Lcom/facebook/internal/SmartLoginOption;

    invoke-virtual {v0}, [Lcom/facebook/internal/SmartLoginOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/SmartLoginOption;

    return-object v0
.end method
