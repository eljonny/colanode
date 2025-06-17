import {
  getColorForId,
  getAvatarSizeClasses,
  AvatarProps,
} from '@colanode/ui/lib/avatars';
import { cn } from '@colanode/ui/lib/utils';

export const AvatarFallback = (props: AvatarProps) => {
  const { id, name, size, className } = props;

  const color = getColorForId(id);
  const avatarSize = size || 'medium';
  const char = name?.[0]?.toLocaleUpperCase() || '?';
  return (
    <span
      className={cn(
        'inline-flex items-center justify-center overflow-hidden rounded text-white shadow',
        getAvatarSizeClasses(avatarSize),
        className
      )}
      style={{ backgroundColor: color }}
    >
      <span className="font-medium">{char}</span>
    </span>
  );
};
