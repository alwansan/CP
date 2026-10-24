.class public final enum Lcom/skydoves/powerspinner/b;
.super Ljava/lang/Enum;
.source "SpinnerGravity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/skydoves/powerspinner/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/skydoves/powerspinner/b;

.field public static final enum t:Lcom/skydoves/powerspinner/b;

.field public static final enum u:Lcom/skydoves/powerspinner/b;

.field public static final enum v:Lcom/skydoves/powerspinner/b;

.field public static final synthetic w:[Lcom/skydoves/powerspinner/b;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/skydoves/powerspinner/b;

    new-instance v1, Lcom/skydoves/powerspinner/b;

    const-string v2, "START"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/b;->s:Lcom/skydoves/powerspinner/b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/powerspinner/b;

    const-string v2, "TOP"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/b;->t:Lcom/skydoves/powerspinner/b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/powerspinner/b;

    const-string v2, "END"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/b;->u:Lcom/skydoves/powerspinner/b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/powerspinner/b;

    const-string v2, "BOTTOM"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/b;->v:Lcom/skydoves/powerspinner/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/skydoves/powerspinner/b;->w:[Lcom/skydoves/powerspinner/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/skydoves/powerspinner/b;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skydoves/powerspinner/b;
    .locals 1

    const-class v0, Lcom/skydoves/powerspinner/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/skydoves/powerspinner/b;

    return-object p0
.end method

.method public static values()[Lcom/skydoves/powerspinner/b;
    .locals 1

    sget-object v0, Lcom/skydoves/powerspinner/b;->w:[Lcom/skydoves/powerspinner/b;

    invoke-virtual {v0}, [Lcom/skydoves/powerspinner/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skydoves/powerspinner/b;

    return-object v0
.end method
