.class public final enum Lcom/skydoves/powerspinner/a;
.super Ljava/lang/Enum;
.source "SpinnerAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/skydoves/powerspinner/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/skydoves/powerspinner/a;

.field public static final enum t:Lcom/skydoves/powerspinner/a;

.field public static final enum u:Lcom/skydoves/powerspinner/a;

.field public static final enum v:Lcom/skydoves/powerspinner/a;

.field public static final synthetic w:[Lcom/skydoves/powerspinner/a;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/skydoves/powerspinner/a;

    new-instance v1, Lcom/skydoves/powerspinner/a;

    const-string v2, "DROPDOWN"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/a;->s:Lcom/skydoves/powerspinner/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/powerspinner/a;

    const-string v2, "FADE"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/a;->t:Lcom/skydoves/powerspinner/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/powerspinner/a;

    const-string v2, "BOUNCE"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/a;->u:Lcom/skydoves/powerspinner/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/skydoves/powerspinner/a;

    const-string v2, "NORMAL"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v3}, Lcom/skydoves/powerspinner/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/skydoves/powerspinner/a;->v:Lcom/skydoves/powerspinner/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/skydoves/powerspinner/a;->w:[Lcom/skydoves/powerspinner/a;

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

    iput p3, p0, Lcom/skydoves/powerspinner/a;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skydoves/powerspinner/a;
    .locals 1

    const-class v0, Lcom/skydoves/powerspinner/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/skydoves/powerspinner/a;

    return-object p0
.end method

.method public static values()[Lcom/skydoves/powerspinner/a;
    .locals 1

    sget-object v0, Lcom/skydoves/powerspinner/a;->w:[Lcom/skydoves/powerspinner/a;

    invoke-virtual {v0}, [Lcom/skydoves/powerspinner/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skydoves/powerspinner/a;

    return-object v0
.end method
